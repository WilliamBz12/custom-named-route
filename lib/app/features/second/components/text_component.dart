import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final int counter;
  TextComponent({this.counter});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
