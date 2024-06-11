import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme{

  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: GoogleFonts.montserrat(
        fontWeight: FontWeight.w900,
        fontSize: 12,
        color: Colors.black87,


      ),
      headlineMedium:GoogleFonts.poppins(
          color: Colors.black54

      ),


  );
  static TextTheme darkTextTheme = TextTheme(
      headlineLarge: GoogleFonts.montserrat(
        color: Colors.white70,
      ),
      headlineMedium:GoogleFonts.poppins(
        color: Colors.white54,
      ),



  );
}