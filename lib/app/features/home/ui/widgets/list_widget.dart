import 'package:flutter/material.dart';
import 'package:structuremodel/app/features/home/models/image_model.dart';

class ListWidget extends StatelessWidget {
  final List<ImageModel> data;
  ListWidget({this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        data.length,
        (index) => Text(data[index].image),
      ),
    );
  }
}
