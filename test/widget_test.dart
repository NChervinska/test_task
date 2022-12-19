import 'package:flutter_test/flutter_test.dart';
import 'package:test_task/resources/app_strings.dart';
import 'package:test_task/test_task_app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const TestTaskApp());

    expect(find.text(AppStrings.heyThere), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });
}
