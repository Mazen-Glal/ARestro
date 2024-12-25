import 'package:arestro/core/utils/helpers/cache_helper.dart';
import 'package:flutter/material.dart';

class ThemeHelper{
  static bool isDarkMode = false;

  static ThemeData lightTheme = ThemeData.light().copyWith();

  static ThemeData darkTheme = ThemeData.dark().copyWith();

  static Future<void> toggleMode() async {
    isDarkMode = !isDarkMode;
    await setThemePreference();
  }

  static Future<void> setThemePreference()async{
    await CacheHelper.setData(key: 'isDarkMode', value: isDarkMode);
  }

  static Future<void> getThemePreference()async{
    isDarkMode = await CacheHelper.getBool(key: 'isDarkMode') ?? false;
  }

}