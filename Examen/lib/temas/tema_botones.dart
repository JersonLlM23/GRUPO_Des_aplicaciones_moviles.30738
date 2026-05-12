import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaBotones {
  static final estiloBotonPrimario = ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 9, 4, 70),
    foregroundColor: ColoresApp.textoClaro,
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  );

  static final temaBotones = ElevatedButtonThemeData(
    style: estiloBotonPrimario,
  );

  static final botonSecundario = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(color: ColoresApp.secundario, width: 2),
      foregroundColor: ColoresApp.secundario,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}
