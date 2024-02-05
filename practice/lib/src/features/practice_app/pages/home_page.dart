import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:practice/src/features/navigation/route_names.dart';
import 'package:practice/src/features/practice_app/utils/tile_container.dart';
import 'package:practice/src/shared/services/blocs/theme_bloc/theme_bloc_bloc.dart';
import 'package:practice/src/shared/services/blocs/theme_bloc/theme_bloc_state.dart';
import 'package:practice/src/shared/services/repositories/theme_repository.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    late ThemeRepository themeRepository;
    final animationController =
        useAnimationController(duration: const Duration(milliseconds: 1500));
    final slideAnimation = Tween(
      begin: const Offset(-1, -1),
      end: Offset.zero,
    ).animate(animationController);

    useEffect(
      () {
        animationController.forward();
        final themeBloc = context.read<ThemeBloc>();
        themeRepository = ThemeRepository(themeBloc);
        return null;
      },
      [animationController],
    );

    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('HomePage'),
            actions: [
              GestureDetector(
                onTap: () {
                  themeRepository.toggleTheme();
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SvgPicture.asset(
                    'assets/svgs/icon-${state.isDarkMode ? 'sun' : 'moon'}.svg',
                    colorFilter:
                        ColorFilter.mode(Colors.blue.shade700, BlendMode.srcIn),
                  ),
                ),
              ),
            ],
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
                      Colors.red.withOpacity(0.9),
                      Colors.red,
                    ],
                    childText: 'main practice'),
                TileContainer(
                    onTap: () {
                      context.goNamed(RouteNames.todos);
                    },
                    colors: [
                      Colors.blue.withOpacity(0.8),
                      Colors.blue,
                    ],
                    childText: 'todos with api')
              ],
            ),
          ),
        );
      },
    );
  }
}
