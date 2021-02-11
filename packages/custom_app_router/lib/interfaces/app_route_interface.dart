import 'package:flutter/material.dart';

import '../custom_app_router.dart';
import '../models/custom_feature_router_model.dart';

//features routes
abstract class CustomAppRouter {
  List<CustomFeatureRouter> get features;

  static Route<dynamic> generateRouters() {}
}
