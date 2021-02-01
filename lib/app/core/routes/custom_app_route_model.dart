import 'package:flutter/material.dart';

class CustomAppRouter {
  final String name;
  final Widget Function(BuildContext context, CustomArguments args) child;
  final List<CustomAppRouter> subRoutes;

  CustomAppRouter({
    @required this.name,
    @required this.child,
    this.subRoutes,
  });
}

class CustomArguments {
  final dynamic data;
  CustomArguments(this.data);
}
