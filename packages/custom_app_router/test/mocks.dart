import 'package:custom_app_router/custom_app_router.dart';
import 'package:custom_app_router/models/custom_feature_router_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MockAppRouter extends CustomAppRouter {
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

class MockHomeFeature extends CustomFeature {
  @override
  List<CustomRouter> get routes => [
        CustomRouter(
          name: CustomNavigator.initialRoute,
          child: (_, args) => Container(),
        ),
      ];
}

class MockSecondFeature extends CustomFeature {
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

class MockExampleSubfeature extends CustomSubFeature {
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
