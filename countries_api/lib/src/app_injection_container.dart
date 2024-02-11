import 'package:countries_api/src/features/theme/view_models/theme_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setUp() {
  debugPrint('setUp is called');

  //* creates a single instance, but only when its first called
  sl.registerLazySingleton<ThemeViewModel>(() => ThemeViewModel());
}
