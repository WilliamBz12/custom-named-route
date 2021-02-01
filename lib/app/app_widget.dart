import 'package:flutter/material.dart';

import 'app_routes.dart';
import 'package:custom_app_router/custom_app_router.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: NavigatorCustomAppRouter.initialRoute,
      onGenerateRoute: NavigatorCustomAppRouter().buildAppRoutes(
        appRouters: AppRoutes(),
      ),
    );
  }
}
