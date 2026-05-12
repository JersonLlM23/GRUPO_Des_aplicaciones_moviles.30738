import 'package:flutter/material.dart';
import '../atomos/texto_etiqueta.dart';
import '../../modelo/pedido_comida_modelo.dart';

class BloqueNotaVenta extends StatelessWidget {
  final PedidoComidaModelo pedido;

  const BloqueNotaVenta({super.key, required this.pedido});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextoEtiqueta(
              texto: 'Nota de venta del pedido:',
              estilo: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            TextoEtiqueta(texto: 'Cliente: ${pedido.nombreCliente}'),
            const SizedBox(height: 8),
            TextoEtiqueta(texto: 'Producto: ${pedido.producto}'),
            const SizedBox(height: 8),
            TextoEtiqueta(texto: 'Combo: ${pedido.tipoCombo}'),
            const SizedBox(height: 8),
            TextoEtiqueta(texto: 'Cantidad: ${pedido.cantidad}'),
            const SizedBox(height: 12),
            TextoEtiqueta(
              texto: 'Subtotal: USD ${pedido.subtotal.toStringAsFixed(2)}',
            ),
            const SizedBox(height: 8),
            TextoEtiqueta(
              texto: 'IVA 15%: USD ${pedido.iva.toStringAsFixed(2)}',
            ),
            const SizedBox(height: 8),
            TextoEtiqueta(
              texto: 'Total a pagar: USD ${pedido.total.toStringAsFixed(2)}',
              estilo: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
