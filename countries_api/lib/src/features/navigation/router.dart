import 'package:countries_api/src/features/home/presentation/pages/home_page.dart';
import 'package:countries_api/src/features/navigation/route_names.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: RouteInfo.home.name,
      path: RouteInfo.home.path,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
