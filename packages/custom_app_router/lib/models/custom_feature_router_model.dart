import 'package:custom_app_router/interfaces/custom_feature_interface.dart';
import 'package:flutter/material.dart';

class CustomFeatureRouter {
  final String name;
  final CustomFeature feature;

  CustomFeatureRouter({
    @required this.name,
    @required this.feature,
  });
}
