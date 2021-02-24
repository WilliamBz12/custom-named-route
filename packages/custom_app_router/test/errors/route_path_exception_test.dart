import 'package:custom_app_router/errors/route_path_exception.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('to string', () {
    expect(RoutePathException('message').toString(), 'ERROR: message');
  });
}
