import 'package:go_router/go_router.dart';
import 'package:practice/navigation/route_names.dart';
import 'package:practice/pages/home_page.dart';
import 'package:practice/pages/settings_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: RouteNames.home,
      path: '/',
      builder: (context, _) => const HomePage(),
      routes: [
        GoRoute(
          name: RouteNames.settings,
          path: 'setting/:title',
          builder: (context, state) => SettingPage(
            title: state.pathParameters['title']!,
          ),
        ),
      ],
    ),
  ],
);
