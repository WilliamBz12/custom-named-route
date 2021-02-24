import 'package:flutter/material.dart';
import '../interfaces/custom_feature_router_interface.dart';

class CustomFeature {
  final String name;
  final CustomFeatureRouter router;

  CustomFeature({
    @required this.name,
    @required this.router,
  });
}
