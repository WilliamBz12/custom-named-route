import 'package:custom_app_router/interfaces/custom_feature_interface.dart';
import 'package:custom_app_router/models/custom_arguments_model.dart';
import 'package:custom_app_router/models/custom_feature_router_model.dart';
import 'package:custom_app_router/models/custom_route_model.dart';
import 'package:flutter_test/flutter_test.dart';

class MockFeature extends CustomFeature {
  @override
  List<CustomRouter> get routes => throw UnimplementedError();
}

void main() {
  test(
    "should return the correct data",
    () {
      final name = "/test";
      final data = CustomFeatureRouter(
        feature: MockFeature(),
        name: name,
      );
      expect(data.name, name);

    },
  );
}
