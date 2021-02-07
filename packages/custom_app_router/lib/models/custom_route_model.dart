import 'package:custom_app_router/interfaces/custom_feature_interface.dart';
import 'package:flutter/material.dart';

class CustomRouter {
  final String name;
  final Widget Function(BuildContext context, CustomArguments args) child;
  final CustomFeature featureRouter;

  CustomRouter({
    @required this.name,
    @required this.child,
    this.featureRouter,
  });
}

class CustomArguments {
  final dynamic data;
  CustomArguments(this.data);
}
