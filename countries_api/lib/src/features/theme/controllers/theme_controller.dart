import 'package:get/get.dart';

class ThemeController extends GetxController {
  final RxBool _isDarkMode = false.obs;

  RxBool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode.value = !_isDarkMode.value;
  }
}
