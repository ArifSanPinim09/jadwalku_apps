import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color blueColor = const Color(0xFF2DD8FE);
Color backLightColor = const Color(0xffE5E5E5);
Color backDarkColor = const Color(0xff1D1C1C);

class Themes {
  static final light = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.red,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    scaffoldBackgroundColor: const Color(0xff1E1E1E),
    brightness: Brightness.dark,
  );

  TextStyle get titleStyle {
    return GoogleFonts.poppins(
      fontSize: 15.0,
      fontWeight: FontWeight.w400,
    );
  }
}
