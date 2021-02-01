import '../models/custom_app_route_model.dart';

//features routes
abstract class AppCustomRoutes {
  List<CustomAppRouter> get routes;
}

//routes inside of a feature
abstract class FeatureCustomRouters {
  List<CustomAppRouter> get routes;
}
