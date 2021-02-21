import 'package:custom_app_router/models/custom_arguments_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    "should return the correct data",
    () {
      final value = "test";
      final data = CustomArguments(value);
      expect(data.data, value);
    },
  );

}
