import 'package:custom_app_router/custom_app_router.dart';
import 'package:custom_app_router/models/custom_route_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

class MockSubFeature implements CustomSubFeatureRouter {
  @override
  List<CustomRouter> get routes => throw UnimplementedError();
}

void main() {
  String route;
  CustomSubFeatureRouter mockSubFeature;
  Widget page;

  setUp(() {
    route = "/page";
    mockSubFeature = MockSubFeature();
    page = Container();
  });

  test(
    "should return the correct data",
    () {
      final data = CustomRouter(name: route, child: (_, args) => page);
      expect(data.name, route);
    },
  );

  test(
    "should work when have a sub feature",
    () {
      final data = CustomRouter(
        name: route,
        subFeature: mockSubFeature,
      );
      expect(data.subFeature, mockSubFeature);
    },
  );
}
