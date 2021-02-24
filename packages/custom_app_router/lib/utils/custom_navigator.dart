import 'package:custom_app_router/widgets/error_route_widget.dart';
import 'package:flutter/material.dart';

import '../errors/route_path_exception.dart';
import '../interfaces/app_route_interface.dart';
import '../interfaces/custom_feature_router_interface.dart';
import '../models/custom_arguments_model.dart';
import '../models/custom_route_model.dart';
import 'route_path_extension.dart';

class CustomNavigator {
  static const String initialRoute = "/";

  RouteFactory generateRoutes({@required CustomAppRouter appRouter}) {
    return (RouteSettings settings) {
      final routePath = settings.name;

      try {
        final feature = appRouter.features.firstWhere(
          (feature) => feature?.name == routePath.featureRoutePath,
          orElse: () => null,
        );

        var router = _directToPage(
          featureRouter: feature?.router,
          routePath: routePath,
        );

        if (router == null) {
          return _builderrorRoute("ROUTE NOT FOUND: --- ${settings.name}");
        }

        debugPrint("INIT ROUTE: --- ${settings.name}");

        return MaterialPageRoute(
          builder: (BuildContext context) {
            return router?.child(
              context,
              CustomArguments(settings?.arguments),
            );
          },
          settings: settings,
        );
      } on RoutePathException catch (e) {
        return _builderrorRoute(e.message);
      }
    };
  }

  CustomRouter _directToPage({
    CustomFeatureRouter featureRouter,
    String routePath,
  }) {
    if (routePath.pathIsAFeature) {
      //then we have to return the initial page
      return featureRouter?.routes?.firstWhere(
        (element) => element.name == initialRoute,
        orElse: () => null,
      );
    }

    /// if is not a feauture, then is a subfeature or a page
    final route = featureRouter?.routes?.firstWhere(
      (element) => element.name == routePath.subfeatureRoutePath,
      orElse: () => null,
    );

    //the route have subfeature or a child
    if (route?.subfeature != null) {
      //then we have to return a page from a subfeature
      return route.subfeature.routes.firstWhere(
        (element) => element.name == routePath.pageRoutePath,
        orElse: () => null,
      );
    }

    //then return a page from a feature
    return route;
  }

  Route<dynamic> _builderrorRoute(String message) {
    debugPrint("$message");
    return MaterialPageRoute(
      builder: (_) => ErrorRouteWidget(message),
    );
  }
}
