import 'package:flutter/material.dart';

class ErrorRouteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text('ROUTE NOT FOUND'),
      ),
    );
  }
}
