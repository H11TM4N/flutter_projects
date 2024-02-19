import 'package:countries_api/src/features/home/presentation/pages/pages.dart';
import 'package:countries_api/src/features/navigation/models/app_route.dart';
import 'package:countries_api/src/features/responsive/responsive_layout.dart';

class RouteInfo {
  static AppRoute home = AppRoute(
    name: 'homePage',
    path: '/',
    builder: (_, __) => const ResponsiveLayout(
      mobilePage: MobilePage(),
      tabletPage: TabletPage(),
      iPadPage: IpadPage(),
      desktopPage: DesktopPage(),
    ),
  );
}
