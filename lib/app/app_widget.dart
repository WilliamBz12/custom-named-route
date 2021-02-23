import 'package:flutter/material.dart';

import 'app_router.dart';
import 'package:custom_app_router/custom_app_router.dart';

import 'app_provider.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: CustomNavigator.initialRoute,
        onGenerateRoute: AppRouter().generateRoutes,
      ),
    );
  }
}
