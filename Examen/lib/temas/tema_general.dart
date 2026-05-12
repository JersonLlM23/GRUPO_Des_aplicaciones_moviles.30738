import 'package:flutter/material.dart';
import 'esquema_color.dart';
import 'tema_formulario.dart';
import 'tema_botones.dart';
import 'tipografia.dart';
import 'tema_appbar.dart';

class TemaGeneral {
  static ThemeData claro = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: Color.fromARGB(255, 182, 224, 66),
      secondary: ColoresApp.secundario,
      surface: ColoresApp.secundario,
      onPrimary: ColoresApp.textoClaro,
      onSecondary: Colors.white,
    ),
    textTheme: Tipografia.texto,
    appBarTheme: TemaAppBar.temaAppBar,
    inputDecorationTheme: TemaFormulario.temaFormulario,
    elevatedButtonTheme: TemaBotones.temaBotones,
    outlinedButtonTheme: TemaBotones.botonSecundario,
  );
}
