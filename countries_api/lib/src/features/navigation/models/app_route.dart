import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  final String path;
  final String name;
  final Widget Function(BuildContext, GoRouterState)? builder;

  AppRoute({
    required this.name,
    required this.path,
    required this.builder,
  });
}
