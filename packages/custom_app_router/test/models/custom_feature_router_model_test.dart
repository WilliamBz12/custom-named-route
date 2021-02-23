import 'package:custom_app_router/interfaces/custom_feature_router_interface.dart';
import 'package:custom_app_router/models/custom_feature_model.dart';
import 'package:custom_app_router/models/custom_route_model.dart';
import 'package:flutter_test/flutter_test.dart';

class MockFeature extends CustomFeatureRouter {
  @override
  List<CustomRouter> get routes => throw UnimplementedError();
}

void main() {
  test(
    "should return the correct data",
    () {
      final name = "/test";
      final data = CustomFeature(
        feature: MockFeature(),
        name: name,
      );
      expect(data.name, name);
    },
  );
}
