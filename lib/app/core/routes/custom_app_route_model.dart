import 'package:flutter/material.dart';

import 'app_route_interface.dart';

class CustomAppRouter {
  final String name;
  final Widget Function(BuildContext context, CustomArguments args) child;
  final FeatureCustomRouters featureRoutes;

  CustomAppRouter({
    @required this.name,
    @required this.child,
    this.featureRoutes,
  });
}

class CustomArguments {
  final dynamic data;
  CustomArguments(this.data);
}
