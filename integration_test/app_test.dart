import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:structuremodel/app/app_widget.dart';
import 'package:structuremodel/app/features/home/home_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    "Not inputting a text and wanting to go to the display page shows "
    "an error and prevents from going to the display page.",
    (WidgetTester tester) async {
      // Testing starts at the root widget in the widget tree
      await tester.pumpWidget(AppWidget());

      await tester.tap(find.byType(FloatingActionButton));
      // Wait for all the animations to finish
      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);

      await tester.tap(find.byType(RaisedButton));
      await tester.pumpAndSettle();

      expect(find.text('image1'), findsOneWidget);
    },
  );

  testWidgets(
    "find text 2",
    (WidgetTester tester) async {
      expect(find.text('image2'), findsNothing);
    },
  );
}
