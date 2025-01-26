import 'package:flutter/material.dart';

class Assets {
  static const String google2Logo = 'assets/auth/google2_logo.png'; // Used 1 times
  static const String googleLogo = 'assets/auth/google_logo.svg'; // Used 1 times
  static const String burgers = 'assets/foods/burgers.png'; // Used 0 times
  static const String food1 = 'assets/foods/food1.png'; // Used 0 times
  static const String food2 = 'assets/foods/food2.png'; // Used 0 times
  static const String person = 'assets/profile/person.png'; // Used 1 times
  static const String logoWithoutName = 'assets/logo/logo_without_name.svg'; // Used 0 times
  static const String nameLogoBlack = 'assets/logo/name_logo_black.svg'; // Used 0 times
  static const String nameLogoWhite = 'assets/logo/name_logo_white.svg';
  static const String StampDark = 'assets/logo/Stamp_Dark.svg';
  static const String StampLight = 'assets/logo/Stamp_Light.svg';
  static const String restaurant1 = 'assets/restaurant/restaurant1.png'; // Used 2 times
  static const String restaurant2 = 'assets/restaurant/restaurant_2.png';
}

Future<void> myPrecacheImage(BuildContext context) async {
  await Future.wait([]);
}
