import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class CustomMultiProviderWidget extends StatelessWidget {
  final List<SingleChildWidget> providers;
  final Widget child;

  CustomMultiProviderWidget({
    this.child,
    this.providers,
  });
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      builder: (_, __) => child,
    );
  }
}
