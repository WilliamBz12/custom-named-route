import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final int title;
  DetailsPage(this.title);
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Center(
        child: Text("${widget.title}"),
      ),
    );
  }
}
