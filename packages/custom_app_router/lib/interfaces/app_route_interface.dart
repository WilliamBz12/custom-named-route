import '../models/custom_feature_router_model.dart';

//features routes
abstract class CustomAppRouter {
  List<CustomFeatureRouter> get features;

  Function get generateRoutes;
}
