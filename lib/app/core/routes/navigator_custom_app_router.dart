import 'package:flutter/material.dart';
import 'package:structuremodel/app/core/routes/error_widget.dart';

import 'app_route_interface.dart';
import 'custom_app_route_model.dart';

class NavigatorCustomAppRouter {
  static const String initialRoute = "/";

  RouteFactory buildAppRoutes({@required AppCustomRoutes appRouters}) {
    return (RouteSettings settings) {
      var paths = settings.name.split('/');
      paths = _setBarOnPaths(paths);

      paths.removeAt(0); //remove first cause is empty

      final firstRoute = appRouters.routes.firstWhere(
        (route) => route.name == paths[0],
        orElse: () => null,
      );

      var rootRoute = _directToSelectedAppRoute(
        position: 1,
        paths: paths,
        currentAppRoute: firstRoute,
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

  List<String> _setBarOnPaths(List<String> paths) {
    List<String> result = [];
    for (var path in paths) {
      result.add("/$path");
    }
    return result;
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => ErrorRouteWidget(),
    );
  }

  CustomAppRouter _directToSelectedAppRoute({
    CustomAppRouter currentAppRoute,
    int position,
    List<String> paths,
  }) {
    //verify if is the last path of paths
    if (position >= paths.length) {
      return currentAppRoute;
    }

    /*
    verify subroutes to handle the next step
    if has -> get the next route
    else -> we have a fail 
    */
    if (currentAppRoute?.featureRoutes != null) {
      final rootRoute = currentAppRoute.featureRoutes.routes.firstWhere(
        (route) => route.name == paths[position],
        orElse: () => null,
      );

      return _directToSelectedAppRoute(
        currentAppRoute: rootRoute,
        paths: paths,
        position: position + 1,
      );
    }
    return null;
  }
}
