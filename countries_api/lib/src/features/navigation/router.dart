import 'package:countries_api/src/features/navigation/route_info.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: RouteInfo.home.name,
      path: RouteInfo.home.path,
      builder: RouteInfo.home.builder,
    ),
  ],
);
