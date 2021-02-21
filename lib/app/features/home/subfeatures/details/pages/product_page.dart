import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("top"),
            RaisedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName("/"));
              },
            ),
          ],
        ),
      ),
    );
  }
}
