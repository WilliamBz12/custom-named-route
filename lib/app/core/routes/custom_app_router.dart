import 'package:flutter/material.dart';
import 'package:structuremodel/app/core/routes/error_widget.dart';

import 'app_route_model.dart';

class CustomAppRouter {
  static const String initialRoute = "/";

  List<String> setBarOnPaths(List<String> paths) {
    List<String> result = [];
    for (var path in paths) {
      result.add("/$path");
    }
    return result;
  }

  RouteFactory buildAppRoutes({@required List<AppRouter> routes}) {
    return (RouteSettings settings) {
      var paths = settings.name.split('/');
      paths = setBarOnPaths(paths);

      paths.removeAt(0); //remove first cause is empty

      final currentRoute = routes.firstWhere(
        (route) => route.name == paths[0],
        orElse: () => null,
      );

      var rootRoute = _directToSelectedAppRoute(
        nextIndex: 1,
        paths: paths,
        currentAppRoute: currentRoute,
      );

      if (rootRoute == null) return _errorRoute();

      return MaterialPageRoute(
        builder: (context) => rootRoute.child(
          context,
          CustomArguments(settings.arguments),
        ),
        settings: settings,
      );
    };
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => ErrorRouteWidget(),
    );
  }

  AppRouter _directToSelectedAppRoute({
    AppRouter currentAppRoute,
    int nextIndex,
    List<String> paths,
  }) {
    if (nextIndex >= paths.length) {
      return currentAppRoute;
    }

    if (currentAppRoute?.subRoutes != null) {
      final rootRoute = currentAppRoute.subRoutes.firstWhere(
        (route) => route.name == paths[nextIndex],
        orElse: () => null,
      );

      return _directToSelectedAppRoute(
        currentAppRoute: rootRoute,
        paths: paths,
        nextIndex: nextIndex + 1,
      );
    }
    return null;
  }
}
