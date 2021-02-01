import 'package:flutter/material.dart';

import 'app_routes.dart';
import 'core/routes/custom_app_router.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: CustomAppRouter.initialRoute,
      onGenerateRoute: CustomAppRouter().buildAppRoutes(
        routes: AppRoutes().routes,
      ),
    );
  }
}
