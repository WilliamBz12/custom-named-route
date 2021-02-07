import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class ImagesRepository extends ChangeNotifier {
  Future<Either<String, List<String>>> fetchAll() async {
    try {
      await Future.delayed(Duration(seconds: 1));
      final result = [
        "image1",
        "image2",
      ];
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
