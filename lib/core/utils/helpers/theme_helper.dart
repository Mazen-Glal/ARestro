import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/helpers/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeHelper {
  static bool isDarkMode = false;

  static ThemeData lightTheme = ThemeData.light().copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    colorScheme: ColorScheme(
      surface: AppColors.white,
      brightness: Brightness.light,
      primary: AppColors.white,
      onPrimary: AppColors.greenWhite,
      secondary: AppColors.green,
      onSecondary: AppColors.white, error: Colors.red,
      onError: Colors.white,
      onSurface: AppColors.green
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith();

  static Future<void> toggleMode() async {
    isDarkMode = !isDarkMode;
    await setThemePreference();
  }

  static Future<void> setThemePreference() async {
    await CacheHelper.setData(key: 'isDarkMode', value: isDarkMode);
  }

  static Future<void> getThemePreference() async {
    isDarkMode = await CacheHelper.getBool(key: 'isDarkMode') ?? false;
  }
}
