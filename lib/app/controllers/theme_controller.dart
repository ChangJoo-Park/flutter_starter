import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

class ThemeController extends GetxController {
  final logger = Logger(printer: PrettyPrinter());
  static ThemeController get to => Get.find();
  final theme = "system".obs;
  final store = GetStorage();
  ThemeMode _themeMode;

  ThemeMode get themeMode => _themeMode;
  String get currentTheme => theme.value;

  Future<void> setThemeMode(String value) async {
    theme.value = value;
    _themeMode = getThemeModeFromString(value);
    Get.changeThemeMode(_themeMode);
    await store.write('theme', value);
    update();
  }

  ThemeMode getThemeModeFromString(String themeString) {
    ThemeMode _setThemeMode = ThemeMode.system;
    if (themeString == 'light') {
      _setThemeMode = ThemeMode.light;
    }
    if (themeString == 'dark') {
      _setThemeMode = ThemeMode.dark;
    }
    return _setThemeMode;
  }

  getThemeModeFromStore() async {
    String _themeString = await store.read('theme') ?? 'system';
    setThemeMode(_themeString);
  }

  // checks whether darkmode is set via system or previously by user
  bool get isDarkModeOn {
    if (currentTheme == 'system') {
      if (WidgetsBinding.instance.window.platformBrightness ==
          Brightness.dark) {
        return true;
      }
    }
    if (currentTheme == 'dark') {
      return true;
    }
    return false;
  }
}
