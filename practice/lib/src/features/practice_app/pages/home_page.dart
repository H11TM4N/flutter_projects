import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:practice/src/features/navigation/route_names.dart';
import 'package:practice/src/features/practice_app/utils/tile_container.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final animationController =
        useAnimationController(duration: const Duration(milliseconds: 1500));
    final slideAnimation = Tween(
      begin: const Offset(-1, -1),
      end: Offset.zero,
    ).animate(animationController);

    useEffect(
      () {
        animationController.forward();
        return null;
      },
      [animationController],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: SlideTransition(
        position: slideAnimation,
        child: ListView(
          children: [
            TileContainer(
                onTap: () {
                  context.goNamed(RouteNames.settings,
                      pathParameters: {'title': 'settings'});
                },
                colors: [
                  Colors.red.withOpacity(0.5),
                  Colors.red,
                ],
                childText: 'main practice'),
            TileContainer(
                onTap: () {
                  context.goNamed(RouteNames.todos);
                },
                colors: [
                  Colors.blue.withOpacity(0.5),
                  Colors.blue,
                ],
                childText: 'todos with api')
          ],
        ),
      ),
    );
  }
}
