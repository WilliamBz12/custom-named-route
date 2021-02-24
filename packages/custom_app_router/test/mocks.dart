import 'package:custom_app_router/custom_app_router.dart';
import 'package:custom_app_router/models/custom_feature_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MockAppRouter extends CustomAppRouter {
  @override
  List<CustomFeature> get features => [
        CustomFeature(
          name: CustomNavigator.initialRoute,
          router: MockHomeRouter(),
        ),
        CustomFeature(
          name: "/second",
          router: MockSecondRouter(),
        ),
      ];

  @override
  Function get generateRoutes =>
      CustomNavigator().generateRoutes(appRouter: MockAppRouter());
}

class MockHomeRouter extends CustomFeatureRouter {
  @override
  List<CustomRouter> get routes => [
        CustomRouter(
          name: CustomNavigator.initialRoute,
          child: (_, args) => Container(),
        ),
      ];
}

class MockSecondRouter extends CustomFeatureRouter {
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
        CustomRouter(
          name: "/example",
          subfeature: MockExampleRouter(),
        ),
      ];
}

class MockExampleRouter extends CustomSubFeatureRouter {
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
