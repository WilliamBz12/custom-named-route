import 'app_route_model.dart';

abstract class AppCustomRoutes {
  List<AppRouter> get routes;
}

abstract class FeatureCustomRouters {
  List<AppRouter> get subRoutes;
}
