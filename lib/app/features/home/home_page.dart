import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onTap() {
    Navigator.pushNamed(
      context,
      "/home/details",
      arguments: 34,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            RaisedButton(
              child: Text("Go to Second"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/second",
                  arguments: "SEGUNDO",
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTap,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
