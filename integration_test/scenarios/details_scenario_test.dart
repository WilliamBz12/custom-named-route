import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:structuremodel/app/app_widget.dart';
import 'package:structuremodel/app/features/home/ui/pages/home_page.dart';
import 'package:structuremodel/app/features/home/ui/pages/details_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    "load details page with arguments",
    (WidgetTester tester) async {
      await tester.pumpWidget(AppWidget());
      // Testing starts at the root widget in the widget tree

      await tester.tap(find.byType(FloatingActionButton));
      // Wait for all the animations to finish
      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);

      await tester.tap(find.byType(FloatingActionButton));

      await tester.pumpAndSettle();

      expect(find.byType(DetailsPage), findsOneWidget);

      expect(find.text('34'), findsOneWidget);
    },
  );
}
