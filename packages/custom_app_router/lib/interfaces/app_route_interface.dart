import '../models/custom_feature_model.dart';

//features routes
abstract class CustomAppRouter {
  List<CustomFeature> get features;
  Function get generateRoutes;
}
