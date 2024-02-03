import 'package:go_router/go_router.dart';
import 'package:practice/todos_w_api/ui/navigation/route_names.dart';
import 'package:practice/todos_w_api/ui/pages/home_page.dart';

final todoRouter = GoRouter(
  routes: [
    GoRoute(
      name: RouteNames.home,
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
