import 'package:flutter_test/flutter_test.dart';
import 'package:assignment_two_flutter_ui/main.dart';

void main() {
  testWidgets('App loads successfully', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.byType(MyApp), findsOneWidget);
  });
}