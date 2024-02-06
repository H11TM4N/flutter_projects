import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:practice/src/shared/services/apis/book_api_service.dart';
import 'package:practice/src/shared/services/apis/firebase_api.dart';
import 'package:practice/src/shared/services/apis/todos_api.dart';

final locator = GetIt.instance;

void setUp() {
  debugPrint('setUp is called');

  //* creates a single instance, but only when its first called
  locator.registerLazySingleton<TodosApi>(() => TodosApi());

  //* theres also...
  //* registerSingleton(), => creates an instance when the app starts
  //* registerFactory(), => created a new instance every time its called

  locator.registerLazySingleton<FirebaseApi>(() => FirebaseApi());
  locator.registerLazySingleton<BookApiService>(() => BookApiService());
}
