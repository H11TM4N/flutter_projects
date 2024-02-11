import 'package:countries_api/src/app_injection_container.dart';
import 'package:countries_api/src/features/navigation/router.dart';
import 'package:countries_api/src/features/theme/theme.dart';
import 'package:countries_api/src/features/theme/view_models/theme_view_model.dart';
import 'package:countries_api/src/features/theme/view_models/view_models.dart';
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
      child: MaterialApp.router(
        title: 'Countries API',
        theme: sl<ThemeViewModel>().isDarkMode ? darkTheme : lightTheme,
        routerConfig: router,
      ),
    );
  }
}
