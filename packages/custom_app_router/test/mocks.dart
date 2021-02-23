import 'package:custom_app_router/custom_app_router.dart';
import 'package:custom_app_router/models/custom_feature_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MockAppFeatures extends CustomAppRouter {
  @override
  List<CustomFeature> get features => [
        CustomFeature(
          name: CustomNavigator.initialRoute,
          feature: MockHomeFeature(),
        ),
        CustomFeature(
          name: "/second",
          feature: MockSecondFeature(),
        ),
      ];

  @override
  Function get generateRoutes =>
      CustomNavigator().generateRoutes(appFeatures: MockAppFeatures());
}

class MockHomeFeature extends CustomFeatureRouter {
  @override
  List<CustomRouter> get routes => [
        CustomRouter(
          name: CustomNavigator.initialRoute,
          child: (_, args) => Container(),
        ),
      ];
}

class MockSecondFeature extends CustomFeatureRouter {
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
          subFeature: MockExampleSubfeature(),
        ),
      ];
}

class MockExampleSubfeature extends CustomSubFeatureRouter {
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
