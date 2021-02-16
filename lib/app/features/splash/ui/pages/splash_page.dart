import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void _ontap() {
    Navigator.popAndPushNamed(context, "/home");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Splash',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _ontap,
        tooltip: 'Go',
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
