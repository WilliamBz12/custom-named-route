import 'package:flutter/material.dart';

import 'app_features.dart';
import 'package:custom_app_router/custom_app_router.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: CustomNavigator.initialRoute,
      onGenerateRoute: CustomNavigator().generateRoutes(
        appFeatures: AppFeatures(),
      ),
    );
  }
}
