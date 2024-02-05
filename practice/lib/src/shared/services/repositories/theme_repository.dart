import 'package:practice/src/shared/services/blocs/theme_bloc/theme_bloc_bloc.dart';
import 'package:practice/src/shared/services/blocs/theme_bloc/theme_bloc_event.dart';

class ThemeRepository {
  final ThemeBloc themeBloc;

  ThemeRepository(this.themeBloc);

  void toggleTheme() {
    themeBloc.add(const ToggleThemeEvent());
  }
}
