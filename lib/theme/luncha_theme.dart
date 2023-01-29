import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LunchaTheme {
  static TextTheme whiteText = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight:FontWeight.w700,
      color: Colors.white,
    ),
    headline1: GoogleFonts.greatVibes(
      fontSize: 32.0,
      fontWeight:FontWeight.w700,
      color: Colors.white,
    ),
    headline2: GoogleFonts.greatVibes(
      fontSize: 28.0,
      fontWeight:FontWeight.w700,
      color: Colors.white,
    ),
    headline3: GoogleFonts.greatVibes(
      fontSize: 24.0,
      fontWeight:FontWeight.w700,
      color: Colors.white,
    ),
    headline6: GoogleFonts.greatVibes(
      fontSize: 16.0,
      fontWeight:FontWeight.w600,
      color: Colors.white,
    ),
  );

  static TextTheme yellowText = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight:FontWeight.w700,
      color: Colors.orange,
    ),
    headline1: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight:FontWeight.w700,
      color: Colors.orange,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 28.0,
      fontWeight:FontWeight.w700,
      color: Colors.orange,
    ),
    headline3: GoogleFonts.openSans(
      fontSize: 24.0,
      fontWeight:FontWeight.w700,
      color: Colors.orange,
    ),
    headline6: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight:FontWeight.w600,
      color: Colors.orange,
    ),
  );
  static ThemeData  light(){
    return ThemeData(
        brightness: Brightness.dark,
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.white),

        ),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
        )
    );
  }

  static ThemeData  dark(){
    return ThemeData(
        brightness: Brightness.dark,
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.white),

        ),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
        )
    );
  }
}
