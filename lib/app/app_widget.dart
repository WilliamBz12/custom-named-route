import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:structuremodel/app/features/home/home_feature.dart';

import 'app_features.dart';
import 'package:custom_app_router/custom_app_router.dart';

class AppWidget extends StatelessWidget {
  final GlobalKey<NavigatorState> _mainNavigatorKey = GlobalKey<
      NavigatorState>(); // You need to create this key for the MaterialApp too

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: _mainNavigatorKey, // Give the main key to the MaterialApp
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: CustomNavigator.initialRoute,
      onGenerateRoute: CustomNavigator().buildRouters(
        appFeatures: AppFeatures(),
      ),
    );
  }
}
