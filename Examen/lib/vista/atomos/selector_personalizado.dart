import 'package:flutter/material.dart';
import '../../temas/index.dart';

class SelectorPersonalizado extends StatelessWidget {
  final String etiqueta;
  final String valorSeleccionado;
  final List<String> opciones;
  final ValueChanged<String?> alCambiar;

  const SelectorPersonalizado({
    super.key,
    required this.etiqueta,
    required this.valorSeleccionado,
    required this.opciones,
    required this.alCambiar,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: valorSeleccionado.isEmpty ? null : valorSeleccionado,
      decoration: InputDecoration(
        labelText: etiqueta,
        labelStyle: const TextStyle(color: ColoresApp.primario),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: ColoresApp.primario, width: 1.5),
        ),
      ),
      items: opciones.map((opcion) {
        return DropdownMenuItem<String>(value: opcion, child: Text(opcion));
      }).toList(),
      onChanged: alCambiar,
    );
  }
}
