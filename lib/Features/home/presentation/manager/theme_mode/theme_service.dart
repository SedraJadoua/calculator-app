import 'package:flutter/material.dart';


class ThemeService {
  
  
  static final lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.white70),
        foregroundColor: MaterialStatePropertyAll(Colors.black),
      ),

    ),
    primaryColor: Colors.white
  );

  
  static final darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
    ),
    primaryColor: Colors.grey[800],
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.black87),
        foregroundColor: MaterialStatePropertyAll(Colors.white),
      ),
    ),
  );


}
