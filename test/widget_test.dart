import 'package:flutter_test/flutter_test.dart';
import 'package:talkie/main.dart';

void main() {
  testWidgets('Talkie app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const TalkieApp());

    // Verify that Talkie title appears
    expect(find.textContaining('Talkie'), findsOneWidget);
    

  });
}
