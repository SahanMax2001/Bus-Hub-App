import 'package:bus_hub/src/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTheme{

  TAppTheme._();

  static  ThemeData LightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(),),

  );

  static  ThemeData DarkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,



  );
}