import 'package:flutter/material.dart';

import '../interfaces/app_route_interface.dart';
import '../interfaces/custom_feature_router_interface.dart';
import '../models/custom_arguments_model.dart';
import '../models/custom_route_model.dart';
import '../widgets/error_route_widget.dart';

class CustomNavigator {
  static const String initialRoute = "/";

  RouteFactory generateRoutes({@required CustomAppRouter appFeatures}) {
    return (RouteSettings settings) {
      var paths = settings.name.split('/');
      paths = _setBarOnPaths(paths);

      CustomRouter router;

      if (paths.isNotEmpty) {
        final selectedFeature = appFeatures.features.firstWhere(
          (feature) => feature?.name == paths[0],
          orElse: () => null,
        );

        router = _directToRouter(
          feature: selectedFeature?.feature,
          paths: paths,
        );
      }

      if (router == null) return _errorRoute(settings.name);

      debugPrint("INIT ROUTE: --- ${settings.name} --- ");

      return MaterialPageRoute(
        builder: (BuildContext context) {
          return router?.child(
            context,
            CustomArguments(settings?.arguments),
          );
        },
        settings: settings,
      );
    };
  }

  CustomRouter _directToRouter({
    CustomFeatureRouter feature,
    List<String> paths,
  }) {
    if (paths.length <= 1) {
      return feature?.routes?.firstWhere(
        (element) => element.name == initialRoute,
        orElse: () => null,
      );
    }

    return _directToSelectedAppRoute(
      paths: paths,
      position: 1,
      routers: feature.routes,
    );
  }

  List<String> _setBarOnPaths(List<String> paths) {
    var result = <String>[];
    for (var path in paths) {
      result.add("/$path");
    }

    result.removeAt(0); //remove first 'cause it's empty

    return result;
  }

  Route<dynamic> _errorRoute(String route) {
    debugPrint("ROUTE NOT FOUND: --- $route ---");
    return MaterialPageRoute(
      builder: (_) => ErrorRouteWidget(route),
    );
  }

  CustomRouter _directToSelectedAppRoute({
    List<CustomRouter> routers,
    int position,
    List<String> paths,
  }) {
    // remove cause is the initial route
    paths.removeWhere((item) => item == "/");

    if (routers != null && position <= paths.length) {
      final rootRoute = routers.firstWhere(
        (route) => route.name == paths[position],
        orElse: () => null,
      );

      if (position + 1 == paths.length) {
        //handle when have subfeature
        if (rootRoute?.child == null) {
          return rootRoute?.subFeature?.routes?.firstWhere(
            (route) => route.name == initialRoute,
            orElse: () => null,
          );
        }
        return rootRoute;
      }

      return _directToSelectedAppRoute(
        routers: rootRoute?.subFeature?.routes,
        paths: paths,
        position: position + 1,
      );
    }

    return null;
  }
}
