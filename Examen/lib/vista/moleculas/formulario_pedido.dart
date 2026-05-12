import 'package:flutter/material.dart';
import '../atomos/boton_personalizado.dart';
import '../atomos/campo_texto_personalizado.dart';
import '../atomos/selector_personalizado.dart';

class FormularioPedido extends StatelessWidget {
  final TextEditingController clienteController;
  final TextEditingController cantidadController;
  final String productoSeleccionado;
  final String comboSeleccionado;
  final List<String> productos;
  final List<String> combos;
  final VoidCallback alPresionarEnviar;
  final ValueChanged<String?> alCambiarProducto;
  final ValueChanged<String?> alCambiarCombo;

  const FormularioPedido({
    super.key,
    required this.clienteController,
    required this.cantidadController,
    required this.productoSeleccionado,
    required this.comboSeleccionado,
    required this.productos,
    required this.combos,
    required this.alPresionarEnviar,
    required this.alCambiarProducto,
    required this.alCambiarCombo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CampoTextoPersonalizado(
          etiqueta: 'Nombre del cliente',
          icono: Icons.person,
          controlador: clienteController,
        ),
        const SizedBox(height: 16),
        SelectorPersonalizado(
          etiqueta: 'Producto',
          valorSeleccionado: productoSeleccionado,
          opciones: productos,
          alCambiar: alCambiarProducto,
        ),
        const SizedBox(height: 16),
        SelectorPersonalizado(
          etiqueta: 'Tipo de combo',
          valorSeleccionado: comboSeleccionado,
          opciones: combos,
          alCambiar: alCambiarCombo,
        ),
        const SizedBox(height: 16),
        CampoTextoPersonalizado(
          etiqueta: 'Cantidad',
          icono: Icons.format_list_numbered,
          controlador: cantidadController,
          tecladoTipo: TextInputType.number,
        ),
        const SizedBox(height: 24),
        BotonPersonalizado(
          texto: 'Calcular pedido',
          alPresionar: alPresionarEnviar,
        ),
      ],
    );
  }
}
