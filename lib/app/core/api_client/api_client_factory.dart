import 'package:dio/dio.dart';

class ApiClient {
  Dio factory() {
    Dio client = new Dio();
    client.options.baseUrl = "example.com.br";
    return client;
  }
}
