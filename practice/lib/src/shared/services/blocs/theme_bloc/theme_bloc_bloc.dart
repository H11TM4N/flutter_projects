import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/src/shared/services/blocs/theme_bloc/theme_bloc_event.dart';
import 'package:practice/src/shared/services/blocs/theme_bloc/theme_bloc_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<ToggleThemeEvent>((event, emit) {
      emit(state.copyWith(isDarkMode: !state.isDarkMode));
    });
  }
}
