import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/src/shared/services/blocs/theme_bloc/theme_bloc_bloc.dart';
import 'package:practice/src/shared/services/blocs/theme_bloc/theme_bloc_state.dart';
import 'package:practice/src/shared/theme/theme.dart';

import 'features/navigation/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Practice App',
            theme: state.isDarkMode ? darkTheme : lightTheme,
            routerConfig: router,
          );
        },
      ),
    );
  }
}
