import 'package:flutter/material.dart';

const Color gray1 = Color(0xFFF9F9FA);
const Color gray2 = Color(0xFFF5F5F5);
const Color gray3 = Color(0xFFF2F3F4);
const Color gray4 = Color(0xFFEBEBEB);
const Color gray41 = Color(0xFFEEEEEE);
const Color gray5 = Color(0xFFDADADA);
const Color gray6 = Color(0xFFBDBDBD);
const Color gray7 = Color(0xFF515150);
const Color gray8 = Color(0xFF171716);

Color cShadow = const Color(0xFF1a2a61).withOpacity(0.06);

const Color green = Color(0xFF22BB9C);
const Color red = Color(0xFFFF5959);
const Color yellow = Color(0xFFFFAD2E);
const Color blue1 = Color(0xFFBFD4E4);

const TextStyle tsh1 = TextStyle(
  color: gray8,
  fontSize: 20,
  fontWeight: FontWeight.w700,
);
const TextStyle ts14400 = TextStyle(
  color: gray8,
  fontSize: 14,
  fontWeight: FontWeight.w400,
);

const TextStyle ts14500 = TextStyle(
  color: gray8,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);
const TextStyle ts12400g6 = TextStyle(
  color: gray6,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);
const TextStyle ts12400g7 = TextStyle(
  color: gray7,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);
const AppBarTheme _appBar = AppBarTheme(
  color: Colors.white,
  elevation: 0,
  titleTextStyle: tsh1,
);

class BusTheme {
  static ThemeData light() {
    return ThemeData().copyWith(appBarTheme: _appBar, focusColor: green);
  }
}
