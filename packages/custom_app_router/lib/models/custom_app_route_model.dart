import 'package:flutter/material.dart';
import '../interfaces/feature_custom_interface.dart';

class CustomAppRouter {
  final String name;
  final Widget Function(BuildContext context, CustomArguments args) child;
  final FeatureCustomRouter featureRouter;

  CustomAppRouter({
    @required this.name,
    @required this.child,
    this.featureRouter,
  });
}

class CustomArguments {
  final dynamic data;
  CustomArguments(this.data);
}
