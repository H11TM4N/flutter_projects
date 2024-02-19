import 'package:countries_api/src/features/navigation/router.dart';
import 'package:countries_api/src/features/theme/theme.dart';
import 'package:countries_api/src/features/theme/view_models/theme_view_model.dart';
import 'package:countries_api/src/features/theme/view_models/view_models.dart';
import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...themeProviders,
      ],
      child: Consumer<ThemeViewModel>(builder: (context, themeState, __) {
        return Builder(builder: (context) {
          final media = MediaQueryData.fromView(View.of(context));
          Dims.setSize(media);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: const TextScaler.linear(1),
            ),
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Countries API',
              theme: themeState.isDarkMode ? darkTheme : lightTheme,
              routerConfig: router,
            ),
          );
        });
      }),
    );
  }
}
