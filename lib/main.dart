import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'providers/app_state.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const TalkieApp());
}

class TalkieApp extends StatelessWidget {
  const TalkieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Talkie',
        
        // Localization
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          // East Asian
          Locale('ko'), Locale('ja'),
          Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),  // Chinese Simplified
          Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),  // Chinese Traditional
          
          // South Asian
          Locale('hi'), Locale('bn'), Locale('ta'), Locale('te'),
          Locale('mr'), Locale('ur'), Locale('gu'), Locale('kn'),
          Locale('ml'), Locale('pa'),
          
          // European
          Locale('en'), Locale('es'), Locale('fr'), Locale('de'),
          Locale('it'), Locale('pt'), Locale('ru'), Locale('pl'),
          Locale('uk'), Locale('nl'), Locale('el'), Locale('cs'),
          Locale('ro'), Locale('sv'), Locale('da'), Locale('fi'),
          Locale('no'), Locale('hu'),
          
          // Southeast Asian
          Locale('id'), Locale('vi'), Locale('th'), Locale('fil'),
          Locale('ms'),
          
          // Middle Eastern
          Locale('ar'), Locale('tr'), Locale('fa'), Locale('he'),
          
          // African
          Locale('sw'), Locale('af'),
        ],
        
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
