import 'package:flutter/material.dart';
import 'esquema_color.dart';

class FondosApp {
  static const BoxDecoration degradadoPrincipal = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color.fromARGB(255, 241, 207, 11),
        Color.fromRGBO(211, 208, 201, 1),
        Color.fromARGB(255, 204, 3, 3),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );

  static const BoxDecoration fondoClaro = BoxDecoration(
    color: ColoresApp.secundario,
  );

  static const BoxDecoration fondoGris = BoxDecoration(
    color: Color.fromARGB(255, 250, 247, 239),
  );
}
