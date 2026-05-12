import 'package:flutter/material.dart';
import '../../temas/index.dart';

class CampoTextoPersonalizado extends StatelessWidget {
  final String etiqueta;
  final IconData icono;
  final TextEditingController controlador;
  final bool ocultarTexto;
  final TextInputType tecladoTipo;

  const CampoTextoPersonalizado({
    super.key,
    required this.etiqueta,
    required this.icono,
    required this.controlador,
    this.ocultarTexto = false,
    this.tecladoTipo = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controlador,
      obscureText: ocultarTexto,
      keyboardType: tecladoTipo,
      style: const TextStyle(color: ColoresApp.textoOscuro),
      decoration: InputDecoration(
        labelText: etiqueta,
        labelStyle: const TextStyle(color: ColoresApp.primario),
        prefixIcon: Icon(icono, color: ColoresApp.primario),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: ColoresApp.primario),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: ColoresApp.primario, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: ColoresApp.primario, width: 2),
        ),
      ),
    );
  }
}
