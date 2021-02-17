import 'package:flutter/material.dart';
import '../interfaces/custom_feature_interface.dart';
import 'custom_arguments_model.dart';

class CustomRouter {
  final String name;
  final Widget Function(BuildContext context, CustomArguments args) child;
  final CustomSubFeature subFeature;

  CustomRouter({
    @required this.name,
    this.child,
    this.subFeature,
  }) {
    assert((child == null || subFeature == null) &&
        (child != null || subFeature != null));
  }
}
