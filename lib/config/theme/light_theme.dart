import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme {
  static const Color primaryColor = Color(0xffe180e19);
  static const Color secondaryColor = Color(0xffe909090);
  static const Color backgroundColor = Color(0xFFEFEFEF);

  /// Getter to get the light theme
  ThemeData getLightTheme() => ThemeData(
        primaryColor: primaryColor,
        secondaryHeaderColor: secondaryColor,
        textTheme: GoogleFonts.robotoTextTheme(
          TextTheme(
            // Headline 1
            displayLarge: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),

            // Headline 2
            displayMedium: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            // Body 1
            bodyLarge: GoogleFonts.roboto(
              textStyle: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0),
            ),

            // Body 2
            bodyMedium: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),

            bodySmall: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
              ),
            ),

            // Body button
            labelLarge: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      );
}
