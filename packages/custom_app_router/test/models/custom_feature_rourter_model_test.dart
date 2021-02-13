import 'package:custom_app_router/models/custom_arguments_model.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('should make copy with implementation', () {
    final model1 = CustomArguments("data");
    final model2 = CustomArguments("data");

    expect(model1 != model2, true);
  });
}
