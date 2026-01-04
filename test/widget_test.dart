import 'package:flutter_test/flutter_test.dart';
import 'package:talkland/main.dart';

void main() {
  testWidgets('TalkLand app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const TalkLandApp());

    // Verify that TalkLand title appears
    expect(find.text('TalkLand'), findsOneWidget);
    
    // Verify that MODE 1 button exists
    expect(find.text('MODE 1 · 의미 학습'), findsOneWidget);
    
    // Verify that MODE 2 button exists
    expect(find.text('MODE 2 · 발음 훈련'), findsOneWidget);
  });
}
