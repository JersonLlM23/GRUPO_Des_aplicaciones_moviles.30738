import 'package:flutter/material.dart';
import '../../modelo/pedido_comida_modelo.dart';
import '../../temas/tema_fondos.dart';
import '../moleculas/bloque_nota_venta.dart';

class VistaNotaVentaComida extends StatelessWidget {
  const VistaNotaVentaComida({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args == null || args is! PedidoComidaModelo) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('JELYs HAMBURGER: Nota de venta del pedido:'),
        ),
        body: const Center(child: Text('No se encontraron datos del pedido.')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('JELYs HAMBURGER: Nota de venta del pedido:'),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: FondosApp.degradadoPrincipal,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Su pedido ha sido generado exitosamente. Aquí está su nota de venta:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              BloqueNotaVenta(pedido: args),
              const SizedBox(height: 24),
              Center(
                child: Image.asset(
                  'lib/resources/logoham.png',
                  width: 320,
                  height: 240,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
