import 'package:dio/dio.dart';
import '../../../shared/models/image_model.dart';

class ImageApi {
  final Dio client;
  ImageApi(this.client);

  Future<List<ImageModel>> getAll() async {
    await Future.delayed(Duration(seconds: 1));
    final result = [
      ImageModel(image: "image1"),
      ImageModel(image: "image2"),
    ];
    //throw Exception("Erro");
    return result;
  }
}
