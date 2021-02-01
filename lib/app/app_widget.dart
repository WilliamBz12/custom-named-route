import 'package:flutter/material.dart';

import 'app_routes.dart';
import 'core/routes/navigator_custom_app_router.dart';

class AppWidget extends StatelessWidget {
  final navigatorAppRouter = NavigatorCustomAppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: NavigatorCustomAppRouter.initialRoute,
      onGenerateRoute: navigatorAppRouter.buildAppRoutes(
        routes: AppRoutes().routes,
      ),
    );
  }
}
