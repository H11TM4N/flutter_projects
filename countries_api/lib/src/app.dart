import 'package:countries_api/src/features/responsive/responsive_layout.dart';
import 'package:countries_api/src/features/theme/theme.dart';
import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/home/presentation/pages/pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final media = MediaQueryData.fromView(View.of(context));
      Dims.setSize(media);
      return MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: const TextScaler.linear(1),
        ),
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Countries API',
          theme: lightTheme,
          darkTheme: darkTheme,
          home: const ResponsiveLayout(
            mobilePage: MobilePage(),
            tabletPage: TabletPage(),
            iPadPage: IpadPage(),
            desktopPage: DesktopPage(),
          ),
        ),
      );
    });
  }
}
