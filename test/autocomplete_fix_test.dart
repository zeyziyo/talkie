import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:talkie/providers/app_state.dart';
import 'package:talkie/widgets/mode1_widget.dart';
import 'package:talkie/widgets/mode2_widget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:talkie/l10n/app_localizations.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;

  Widget createTestWidget(AppState appState, Widget child) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ko'), Locale('en')],
      home: Scaffold(
        body: ChangeNotifierProvider<AppState>.value(
          value: appState,
          child: child,
        ),
      ),
    );
  }

  testWidgets('Mode 1: Clear button dismisses focus', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    final appState = AppState(prefs);

    await tester.pumpWidget(createTestWidget(appState, const Mode1Widget()));
    await tester.pump();

    final textFieldFinder = find.byType(TextField).first;
    await tester.tap(textFieldFinder);
    await tester.enterText(textFieldFinder, 'hello');
    await tester.pumpAndSettle();

    final focusNode = tester.widget<TextField>(textFieldFinder).focusNode!;
    expect(focusNode.hasFocus, isTrue);

    // Find any IconButton that has an icon with code 0xe168 (Icons.clear)
    final clearButton = find.byWidgetPredicate((w) => 
      w is IconButton && w.icon is Icon && (w.icon as Icon).icon?.codePoint == 0xe168
    );
    
    expect(clearButton, findsOneWidget);

    await tester.tap(clearButton);
    await tester.pumpAndSettle();

    expect(appState.sourceText, isEmpty);
    expect(focusNode.hasFocus, isFalse);
  });

  testWidgets('Mode 2: Clear button dismisses focus', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    final appState = AppState(prefs);

    await tester.pumpWidget(createTestWidget(appState, const Mode2Widget()));
    await tester.pump();

    final searchBarFinder = find.byType(SearchBar);
    await tester.tap(searchBarFinder);
    await tester.enterText(searchBarFinder, 'test');
    await tester.pumpAndSettle();

    final focusNode = tester.widget<SearchBar>(searchBarFinder).focusNode!;
    expect(focusNode.hasFocus, isTrue);

    final clearButton = find.byWidgetPredicate((w) => 
      w is IconButton && w.icon is Icon && (w.icon as Icon).icon?.codePoint == 0xe168
    );
    
    expect(clearButton, findsAtLeastNWidgets(1));

    await tester.tap(clearButton.last);
    await tester.pumpAndSettle();

    expect(appState.searchQuery, isEmpty);
    expect(focusNode.hasFocus, isFalse);
  });
}
