import 'package:countries_api/src/features/theme/view_models/theme_view_model.dart';
import 'package:provider/provider.dart';

var themeProviders = [
  ChangeNotifierProvider(
    create: (context) => ThemeViewModel(),
  ),
];
