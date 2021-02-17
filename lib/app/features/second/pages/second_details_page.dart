import 'package:flutter/material.dart';
import '../components/text_component.dart';

class SecondDetailsPage extends StatefulWidget {
  final String title;
  SecondDetailsPage({this.title});
  @override
  _SecondDetailsPageState createState() => _SecondDetailsPageState();
}

class _SecondDetailsPageState extends State<SecondDetailsPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: TextComponent(
        counter: _counter,
      ),
    );
  }
}
