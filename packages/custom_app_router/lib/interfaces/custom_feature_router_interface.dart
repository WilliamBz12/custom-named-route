import 'package:custom_app_router/custom_app_router.dart';
import '../models/custom_route_model.dart';

//routes inside of a feature
abstract class CustomFeatureRouter {
  List<CustomRouter> get routes;
}

abstract class CustomSubFeatureRouter {
  List<CustomRouter> get routes;
}
