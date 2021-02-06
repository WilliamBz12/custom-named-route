import 'package:flutter/material.dart';

import '../models/custom_app_route_model.dart';

//routes inside of a feature
abstract class FeatureCustomRouter {
  List<CustomAppRouter> get routes;
  Widget Function(BuildContext context, CustomArguments args) child;
}
