import 'package:flutter/material.dart';
import '../../../shared/models/image_model.dart';

class ListImageComponent extends StatelessWidget {
  final List<ImageModel> data;
  ListImageComponent({this.data});

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
