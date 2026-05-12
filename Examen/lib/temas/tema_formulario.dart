import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaFormulario {
  static InputDecorationTheme temaFormulario = InputDecorationTheme(
    filled: true,
    fillColor: ColoresApp.textoClaro,
    labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: ColoresApp.primario),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: ColoresApp.primario, width: 2),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    ),
  );
}
