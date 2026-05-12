import 'package:flutter/material.dart';

class Tipografia {
  static const TextTheme texto = TextTheme(
    displayLarge: TextStyle(fontSize: 57.0, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w100),
    bodyMedium: TextStyle(
      fontSize: 16.0,
      color: Color.fromARGB(255, 1, 12, 17),
    ),
    bodySmall: TextStyle(fontSize: 12.0, color: Color.fromARGB(255, 0, 19, 29)),
    labelSmall: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),
    labelLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
  );
}
