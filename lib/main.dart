import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'providers/app_state.dart';
import 'providers/simplified_app_state.dart';
import 'screens/home_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'services/supabase_service.dart';
import 'services/background_sync_service.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
import 'dart:io' as io;
import 'package:google_mobile_ads/google_mobile_ads.dart' hide AppState;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // v15.8.3: Optimized initialization with robust error handling
  try {
    await dotenv.load(fileName: ".env");
    debugPrint('>>> MAIN [1] Env Loaded');
    
    final kakaoNativeKey = dotenv.env['KAKAO_NATIVE_APP_KEY'];
    final kakaoJsKey = dotenv.env['KAKAO_JAVASCRIPT_KEY'];
    
    // v15.8.12: 웹 환경에서는 SDK 초기화가 브라우저 리다이렉트(kakao:// 스킴 오류)에 간섭하므로 네이티브에서만 실행
    if (!kIsWeb && kakaoNativeKey != null && kakaoNativeKey.isNotEmpty) {
      KakaoSdk.init(
        nativeAppKey: kakaoNativeKey,
        javaScriptAppKey: kakaoJsKey,
      );
      debugPrint('>>> MAIN [2] Kakao SDK Initialized (Native Only)');
      
      try {
        final hashKey = await KakaoSdk.origin;
        debugPrint('>>> KAKAO KEY HASH: $hashKey');
      } catch (e) {
        debugPrint('>>> KAKAO [!] Error getting key hash: $e');
      }
    } else if (kIsWeb) {
      debugPrint('>>> MAIN [2] Kakao SDK Initialization Skipped on Web to avoid Redirect interference');
    }
  } catch (e) {
    debugPrint('>>> MAIN [!] Fatal Initialization Error: $e');
    // Continue execution to at least show the UI if possible
  }

  debugPrint('>>> MAIN [3] Widgets Binding Initialized');
  
  // v112 Fix: Dynamic SQLite Engine Selection (Native vs FFI)
  if (kIsWeb) {
    databaseFactory = databaseFactoryFfiWeb;
  } else if (io.Platform.isWindows || io.Platform.isLinux) {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  } else if (io.Platform.isAndroid) {
    // v112: Use API Level detection for safer engine switching on old Android
    final apiLevel = _getAndroidApiLevel();
    bool useFfi = apiLevel > 0 && apiLevel <= 30;
    
    // Fallback to feature detection if API level check is inconclusive
    if (!useFfi) {
      useFfi = await _shouldUseFfiOnAndroid();
    }

    if (useFfi) {
      debugPrint('[SQLite] Android API $apiLevel detected or JSON1 missing. Switching to FFI.');
      sqfliteFfiInit();
      databaseFactory = databaseFactoryFfi;
    }
  }
  debugPrint('>>> MAIN [2] Database Factory Set: ${databaseFactory.runtimeType}');
  
  // Initialize AdMob (mobile only)
  if (!kIsWeb) {
    try {
      if (io.Platform.isAndroid || io.Platform.isIOS) {
        await MobileAds.instance.initialize();
      }
    } catch (e) {
      print("Warning: AdMob init failed: $e");
    }
  }

  // Initialize SharedPrefs
  final prefs = await SharedPreferences.getInstance();
  debugPrint('>>> MAIN [3] SharedPrefs Done');

  // Initialize Supabase
  try {
    await SupabaseService.initialize();
  } catch (e) {
    debugPrint('>>> MAIN [!] Supabase Error: $e');
    print("Error initializing Supabase: $e"); 
  }
  debugPrint('>>> MAIN [4] Supabase Init Attempted');
  
  // Initialize Background Sync (Workmanager)
  if (!kIsWeb && (io.Platform.isAndroid || io.Platform.isIOS)) {
    try {
      // Lazy import handled by file level, but logic conditional
      await BackgroundSyncService.initialize();
      await BackgroundSyncService.registerPeriodicTask();
    } catch (e) {
      print("Error initializing Background Sync: $e");
    }
  }

  runApp(TalkieApp(prefs: prefs));
}

/// v112: Feature detection to decide if we need FFI on Android (for JSON1 support)
Future<bool> _shouldUseFfiOnAndroid() async {
  try {
    // Default factory is native on Android
    final db = await openDatabase(inMemoryDatabasePath);
    // Test JSON1 support
    await db.rawQuery("SELECT json('{}')");
    await db.close();
    debugPrint('[SQLite] Native JSON1 support detected. Using stable native driver.');
    return false;
  } catch (e) {
    debugPrint('[SQLite] Native JSON1 support missing or failed: $e. Falling back to FFI.');
    return true; 
  }
}

/// v112: Extract Android API Level from system string
int _getAndroidApiLevel() {
  if (!io.Platform.isAndroid) return 0;
  try {
    final versionString = io.Platform.operatingSystemVersion;
    // Format: "Android 11 (build... API 30)" or "API 30"
    final apiMatch = RegExp(r'API\s+(\d+)').firstMatch(versionString);
    if (apiMatch != null) {
      return int.parse(apiMatch.group(1)!);
    }
    // Fallback for "Android 11"
    final androidMatch = RegExp(r'Android\s+(\d+)').firstMatch(versionString);
    if (androidMatch != null) {
      int major = int.parse(androidMatch.group(1)!);
      if (major >= 11) return 30;
      if (major == 10) return 29;
      if (major == 9) return 28;
      if (major == 8) return 26;
      if (major == 7) return 24;
      if (major == 6) return 23;
      if (major == 5) return 21;
    }
  } catch (e) {
    debugPrint('[SQLite] API parse error: $e');
  }
  return 0;
}

class TalkieApp extends StatelessWidget {
  final SharedPreferences prefs;
  const TalkieApp({super.key, required this.prefs});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppState(prefs)),
        ChangeNotifierProvider(create: (context) => SimplifiedAppState()),
      ],
      child: Consumer<AppState>(
        builder: (context, appState, child) {
          return MaterialApp(
            title: 'Talkie',
            
            // Localization
            locale: _resolveLocale(appState.sourceLang),
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
              useMaterial3: true,
            ),
            home: const HomeScreen(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }

  Locale _resolveLocale(String langCode) {
    // Handle special cases with script/country codes
    if (langCode == 'zh-CN') {
      return const Locale('zh', 'CN');
    } else if (langCode == 'zh-TW') {
      return const Locale('zh', 'TW');
    }
    // For simple language codes (ko, en, ja, etc.)
    return Locale(langCode);
  }
}
