import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final List<String> data;
  ListWidget({this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        data.length,
        (index) => Text(data[index]),
      ),
    );
  }
}
