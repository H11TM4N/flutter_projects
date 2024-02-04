import 'package:go_router/go_router.dart';
import 'package:practice/src/features/navigation/route_names.dart';
import 'package:practice/src/features/practice_app/pages/dummy_page.dart';
import 'package:practice/src/features/practice_app/pages/home_page.dart';
import 'package:practice/src/features/practice_app/pages/settings_page.dart';
import 'package:practice/src/features/practice_app/pages/url_launcher.dart';
import 'package:practice/src/features/todos_w_api/ui/pages/todos_page.dart';

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
          routes: [
            GoRoute(
              name: RouteNames.dummy,
              path: 'dummy',
              builder: (context, state) => const DummyPage(),
            ),
            GoRoute(
              name: RouteNames.urlLauncher,
              path: 'url-launcher',
              builder: (context, state) => const UrlLauncherPage(),
            ),
          ],
        ),
        GoRoute(
          name: RouteNames.todos,
          path: 'todos',
          builder: (context, state) => const TodosPage(),
        )
      ],
    ),
  ],
);
