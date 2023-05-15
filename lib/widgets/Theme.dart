import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class MyTheme{
  static ThemeData get lightTheme =>ThemeData(
    cardColor: Colors.grey[200],
    canvasColor:Colors.white,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(color: Colors.greenAccent,
        elevation: 0.0,iconTheme: IconThemeData(color: Colors.black45),

      ), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan));
  static ThemeData get darkTheme =>ThemeData(
    //brightness: Brightness.dark,
    cardColor: Colors.grey[600],
    canvasColor: darkBlueColor,
    primarySwatch: Colors.cyan,
    fontFamily: GoogleFonts.poppins().fontFamily,
    appBarTheme: AppBarTheme(color: Colors.green,
      elevation: 0.0,iconTheme: IconThemeData(color: Colors.white),

    ),
  );
  static Color creamColors=Colors.white54;
  static Color darkBlueColor=Color(0xff403b58);
  static Color darkcreamColor=Vx.blue500;
  static Color darkcyanColor=Vx.cyan400;
}