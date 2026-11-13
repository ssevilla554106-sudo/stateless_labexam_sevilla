import 'package:flutter_test/flutter_test.dart';

import 'package:stateless_labexam_sevilla/main.dart';

void main() {
  testWidgets('Student dashboard displays profile and subjects', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Student Dashboard'), findsOneWidget);
    expect(find.text('Shandii Luis B. Sevilla'), findsOneWidget);
    expect(find.text('s.sevilla.554106@umindanao.edu.ph'), findsOneWidget);
    expect(find.text('Contact Number'), findsOneWidget);
    expect(find.text('Computer Programming'), findsOneWidget);
    expect(find.text('Database Management'), findsOneWidget);
    expect(find.text('Web Development'), findsOneWidget);
    expect(find.byTooltip('Add subject'), findsOneWidget);
  });
}
