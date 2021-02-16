import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:structuremodel/app/app_widget.dart';
import 'package:structuremodel/app/features/home/pages/home_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    "handle load my informations by cubit",
    (WidgetTester tester) async {
      await tester.pumpWidget(AppWidget());
      // Testing starts at the root widget in the widget tree

      await tester.tap(find.byType(FloatingActionButton));
      // Wait for all the animations to finish
      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);

      await tester.tap(find.byType(RaisedButton));
      await tester.pumpAndSettle();

      expect(find.text('image1'), findsOneWidget);
    },
  );
}
