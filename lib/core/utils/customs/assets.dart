import 'package:flutter/material.dart';

class Assets {
  static const String google2Logo = 'assets/auth/google2_logo.png';
  static const String googleLogo = 'assets/auth/google_logo.svg';
  static const String background = 'assets/order/background.png';
  static const String Pattern = 'assets/order/Pattern.png';
  static const String Rectangle = 'assets/order/Rectangle.png';
  static const String burgers = 'assets/foods/burgers.png';
  static const String food1 = 'assets/foods/food1.png';
  static const String food2 = 'assets/foods/food2.png';
  static const String food3 = 'assets/foods/food3.png';
  static const String food4 = 'assets/foods/food4.png';
  static const String food5 = 'assets/foods/food5.png';
  static const String person = 'assets/profile/person.png';
  static const String logoWithoutName = 'assets/logo/logo_without_name.svg';
  static const String nameLogoBlack = 'assets/logo/name_logo_black.svg';
  static const String nameLogoWhite = 'assets/logo/name_logo_white.svg';
  static const String StampDark = 'assets/logo/Stamp_Dark.svg';
  static const String StampLight = 'assets/logo/Stamp_Light.svg';
  static const String reservedTable = 'assets/restaurant/reserved_table.png';
  static const String reserveThankYou =
      'assets/restaurant/reserve_thank_you.png';
  static const String restaurant1 = 'assets/restaurant/restaurant1.png';
  static const String restaurant2 = 'assets/restaurant/restaurant_2.png';
  static const String unreservedTable =
      'assets/restaurant/unreserved_table.png';
}

Future<void> myPrecacheImage(BuildContext context) async {
  await Future.wait([]);
}
