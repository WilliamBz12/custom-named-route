import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../shared/models/image_model.dart';
import '../api/image_api.dart';

class ImagesRepository {
  final Dio client;
  ImagesRepository({this.client});

  Future<Either<String, List<ImageModel>>> fetchAll() async {
    try {
      return Right(await ImageApi(client).getAll());
    } catch (e) {
      return Left(e.toString());
    }
  }
}
