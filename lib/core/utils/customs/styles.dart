import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/fonts.dart';
import 'package:flutter/material.dart';

abstract class Styles{

  static const TextStyle head36w700 = TextStyle(
    fontSize:36,
    fontFamily: FontsFamily.manrope,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle head24w700 = TextStyle(
    fontSize:24,
    fontFamily: FontsFamily.manrope,
    fontWeight: FontWeight.w700,
  );
  static  TextStyle head16w400 = TextStyle(
    fontSize:16,
    color: AppColors.white,
    fontFamily: FontsFamily.manrope,
    fontWeight: FontWeight.w400,
  );
  static  TextStyle head14w500 = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      fontFamily: FontsFamily.poppins,
  );



}