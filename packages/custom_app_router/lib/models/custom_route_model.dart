import 'package:flutter/material.dart';
import '../interfaces/custom_feature_router_interface.dart';
import 'custom_arguments_model.dart';

class CustomRouter {
  final String name;
  final Widget Function(BuildContext context, CustomArguments args) child;
  final CustomSubFeatureRouter subfeature;

  CustomRouter({
    @required this.name,
    this.child,
    this.subfeature,
  }) : assert((child == null || subfeature == null) &&
            (child != null || subfeature != null));
}
