import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String title;
  SecondPage({this.title});
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  void _incrementCounter() {
    Navigator.pushNamed(context, "/second/details/", arguments: "Details");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Text("details"),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
