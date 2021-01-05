import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ThemeText {
  ThemeText._();

  static getTextTheme() => _poppinsTextTheme;

  static TextTheme get _poppinsTextTheme => GoogleFonts.poppinsTextTheme();

  static TextStyle get _tsHeadline6 =>
      _poppinsTextTheme.headline6.copyWith(color: Colors.black);
}
