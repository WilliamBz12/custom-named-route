import 'package:flutter/material.dart';
import '../interfaces/custom_feature_interface.dart';
import 'custom_arguments_model.dart';

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
