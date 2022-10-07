// ignore_for_file: constant_identifier_names,, use_full_hex_values_for_flutter_colors, prefer_interpolation_to_compose_strings, file_names

import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color transparent = Color(0xFF00000000);
  static const Color backGround = Color(0xffEFF0EF);
  static const Color primaryColor = Color(0xFF224289);
  static const Color darkPrimaryColor = Color(0xFF152b79);
  static const Color lightPrimaryColor = Color(0xFF1454f2);
  static const Color white = Color(0xFFffffff);
  static const Color black = Color(0xFF000000);
  static const Color red = Color(0xFFFF0000);
  static const Color gradientGreen = Color.fromRGBO(45, 197, 42, 1);
  static const Color starColor = Color(0xffF29843);
  static const Color backgroundColor = Color(0xffE5E5E5);
  static const Color boldTextColor = Color(0xff03110C);

// ! Text Colors
  static const Color DarkText = Color(0xFF0e255b);
  static const Color greenishText = Color(0xFF21a886);
  static const Color greyText = Color(0xFF757575);
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
