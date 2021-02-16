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
        CustomFeatureRouter(
          name: "/second",
          feature: MockSecondFeature(),
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
      ];
}

class MockSecondFeature implements CustomFeature {
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

main() {
  RouteFactory routes;

  setUp(() {
    routes = CustomNavigator().generateRoutes(
      appFeatures: MockAppRouter(),
    );
  });

  group("call routes by features", () {
    test("should not work when is called an empty route", () {
      final settings = RouteSettings(name: "");

      final route = routes?.call(settings);

      expect(route.settings.name, isNull);
      expect(route.settings.arguments, isNull);
    });
    test("should work well when is called the correct route", () {
      final settings = RouteSettings(name: "/", arguments: "23");

      final route = routes?.call(settings);

      expect(route.settings.name, equals("/"));
      expect(route.settings.arguments, equals("23"));
    });

    test("should not work  when is called an incorrect route", () {
      final settings = RouteSettings(name: "/incorrect", arguments: "23");

      final route = routes?.call(settings);

      expect(route?.settings?.name, isNull);
      expect(route?.settings?.arguments, isNull);
    });
  });

  group("call routes by pages in features", () {
    test("should work well when is called a correct route from feature", () {
      final settings = RouteSettings(name: "/second/details");

      final route = routes?.call(settings);

      expect(route.settings.name, equals("/second/details"));
      expect(route.settings.arguments, isNull);
    });

    test("should not work when is called an incorrect route in feature", () {
      final settings = RouteSettings(
        name: "/second/test",
      );

      final route = routes?.call(settings);

      expect(route?.settings?.name, isNull);
      expect(route?.settings?.arguments, isNull);
    });

    test(
        "should not work when is called an incorrect route in a route in a feature",
        () {
      final settings = RouteSettings(
        name: "/second/test/details",
        arguments: "23",
      );

      final route = routes?.call(settings);

      expect(route?.settings?.name, isNull);
      expect(route?.settings?.arguments, isNull);
    });
  });
}
