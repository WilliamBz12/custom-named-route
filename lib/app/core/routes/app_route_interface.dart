import 'custom_app_route_model.dart';

abstract class AppCustomRoutes {
  List<CustomAppRouter> get routes;
}

abstract class FeatureCustomRouters {
  List<CustomAppRouter> get subRoutes;
}
