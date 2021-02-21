import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:custom_app_router/widgets/error_route_widget.dart';

void main() {
  final route = "/home";

  testWidgets(
    "load details page with arguments",
    (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: ErrorRouteWidget(route)));
      expect(find.text(route), findsOneWidget);
    },
  );
}
