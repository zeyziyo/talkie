import 'package:flutter_test/flutter_test.dart';
import 'package:talkie/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('Talkie app smoke test', (WidgetTester tester) async {
    // Mock SharedPreferences
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();

    // Build our app and trigger a frame.
    await tester.pumpWidget(TalkieApp(prefs: prefs));

    // Verify that Talkie title appears
    expect(find.textContaining('Talkie'), findsOneWidget);
  });
}
