import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:structuremodel/app/core/api_client/api_client_factory.dart';

import 'app_features.dart';
import 'package:custom_app_router/custom_app_router.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => ApiClient().factory()),
      ],
      builder: (_, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: CustomNavigator.initialRoute,
        onGenerateRoute: CustomNavigator().generateRoutes(
          appFeatures: AppFeatures(),
        ),
      ),
    );
  }
}
