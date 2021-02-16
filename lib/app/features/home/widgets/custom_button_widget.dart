import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final Function onTap;
  final String title;

  CustomButtonWidget({this.onTap, this.title})
      : assert(onTap != null && title != null);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(title),
      onPressed: onTap,
    );
  }
}
