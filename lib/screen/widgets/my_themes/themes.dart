import 'package:flutter/material.dart';

class MyThemes {
  static final myTheme = ThemeData(
      primarySwatch: Colors.deepPurple,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.deepPurple),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
            fontSize: 30, color: Color.fromARGB(255, 24, 20, 24)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: const Color.fromARGB(255, 166, 114, 163),
      )));
}
