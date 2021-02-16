import 'package:custom_app_router/custom_app_router.dart';
import 'package:custom_app_router/models/custom_feature_router_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MockAppRouter implements CustomAppRouter {
  @override
  List<CustomFeatureRouter> get features => [
        CustomFeatureRouter(
          name: CustomNavigator.initialRoute,
          feature: MockHomeFeature(),
        ),
      ];
}

class MockHomeFeature implements CustomFeature {
  @override
  List<CustomRouter> get routes => [
        CustomRouter(
          name: CustomNavigator.initialRoute,
          child: (_, args) => Container(),
        ),
        CustomRouter(
          name: "/details",
          child: (_, args) => Container(),
        ),
      ];
}

class MockSecondsFeature implements CustomFeature {
  @override
  List<CustomRouter> get routes => [
        CustomRouter(
          name: CustomNavigator.initialRoute,
          child: (_, args) => Container(),
        ),
      ];
}

main() {
  RouteFactory routes;

  setUp(() {
    routes = CustomNavigator().generateRoutes(
      appFeatures: MockAppRouter(),
    );
  });
  test('should created correct route with settings implementations', () {
    final settings = RouteSettings(name: "/", arguments: "23");

    final route = routes.call(settings);

    expect(route.settings.arguments, "23");
    expect(route.currentResult.hashCode, 2011);
  });
}
