import 'package:custom_app_router/custom_app_router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../interfaces/app_route_interface.dart';
import '../widgets/error_widget.dart';

class NavigatorCustomAppRouter {
  static const String initialRoute = "/";

  RouteFactory buildAppRoutes({@required CustomAppRouter appRouters}) {
    return (RouteSettings settings) {
      var paths = settings.name.split('/');
      paths = _setBarOnPaths(paths);

      paths.removeAt(0); //remove first cause is empty

      final selectedFeature = appRouters.features.firstWhere(
        (feature) => feature.name == paths[0],
        orElse: () => null,
      );

      var router = _directToRouter(
        feature: selectedFeature?.feature,
        paths: paths,
      );

      if (router == null) return _errorRoute(settings.name);

      return MaterialPageRoute(
        builder: (context) => router?.child(
          context,
          CustomArguments(settings.arguments),
        ),
        settings: settings,
      );
    };
  }

  CustomRouter _directToRouter({CustomFeature feature, List<String> paths}) {
    if (paths.length <= 1) {
      return feature.routes
          .firstWhere((element) => element.name == initialRoute);
    }

    return _directToSelectedAppRoute(
      paths: paths,
      position: 1,
      routers: feature.routes,
    );
  }

  List<String> _setBarOnPaths(List<String> paths) {
    List<String> result = [];
    for (var path in paths) {
      result.add("/$path");
    }
    return result;
  }

  Route<dynamic> _errorRoute(String route) {
    return MaterialPageRoute(
      builder: (_) => ErrorRouteWidget(route),
    );
  }

  CustomRouter _directToSelectedAppRoute({
    List<CustomRouter> routers,
    int position,
    List<String> paths,
  }) {
    if (routers != null) {
      final rootRoute = routers.firstWhere(
        (route) => route.name == paths[position],
        orElse: () => null,
      );

      if (paths.length >= position) {
        return rootRoute;
      }

      return _directToSelectedAppRoute(
        routers: rootRoute.featureRouter.routes,
        paths: paths,
        position: position + 1,
      );
    }
    return null;
  }
}
