import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app_new/cubit/theme_cubit/theme_cubit.dart';

const Color bluisClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkColr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = bluisClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
      primaryColor: bluisClr,
      appBarTheme: const AppBarTheme(color: Colors.white),
      brightness: Brightness.light);

  static final dark = ThemeData(
      primaryColor: darkGreyClr,
      appBarTheme: const AppBarTheme(color: darkGreyClr),
      brightness: Brightness.dark);
}

TextStyle get subHedingStyle {
  return GoogleFonts.lato(
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      color: Colors.grey);
}

TextStyle get hedingStyle {
  return GoogleFonts.lato(
      textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold));
}

TextStyle get titleStyle {
  return GoogleFonts.lato(
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold));
}
