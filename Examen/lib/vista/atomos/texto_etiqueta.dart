import 'package:flutter/material.dart';
import '../../temas/index.dart';

class TextoEtiqueta extends StatelessWidget {
  final String texto;
  final TextStyle? estilo;

  const TextoEtiqueta({super.key, required this.texto, this.estilo});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style:
          estilo ??
          const TextStyle(color: ColoresApp.textoOscuro, fontSize: 16),
    );
  }
}
