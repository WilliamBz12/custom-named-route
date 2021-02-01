import 'package:flutter/material.dart';

import '../interfaces/app_route_interface.dart';
import '../models/custom_app_route_model.dart';
import '../widgets/error_widget.dart';

class NavigatorCustomAppRouter {
  static const String initialRoute = "/";

  RouteFactory buildAppRoutes({@required AppCustomRouter appRouters}) {
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

      if (rootRoute == null) return _errorRoute(settings.name);

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

  Route<dynamic> _errorRoute(String route) {
    return MaterialPageRoute(
      builder: (_) => ErrorRouteWidget(route),
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
    if (currentAppRoute?.featureRouter != null) {
      final rootRoute = currentAppRoute.featureRouter.routes.firstWhere(
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
