import 'package:flutter/material.dart';

class AppRouter {
  final String name;
  final Widget Function(BuildContext context, CustomArguments args) child;
  final List<AppRouter> subRoutes;

  AppRouter({
    @required this.name,
    @required this.child,
    this.subRoutes,
  });
}

class CustomArguments {
  final dynamic data;
  CustomArguments(this.data);
}
