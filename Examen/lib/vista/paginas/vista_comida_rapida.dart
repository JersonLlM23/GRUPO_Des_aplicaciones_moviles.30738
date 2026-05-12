import 'package:flutter/material.dart';
import '../../controlador/comida_controlador.dart';
import '../../modelo/pedido_comida_modelo.dart';
import '../../temas/tema_fondos.dart';
import '../moleculas/formulario_pedido.dart';
import '../atomos/texto_etiqueta.dart';

class VistaComidaRapida extends StatefulWidget {
  const VistaComidaRapida({super.key});

  @override
  State<VistaComidaRapida> createState() => _VistaComidaRapidaState();
}

class _VistaComidaRapidaState extends State<VistaComidaRapida> {
  final TextEditingController _clienteController = TextEditingController();
  final TextEditingController _cantidadController = TextEditingController();
  String _productoSeleccionado = '';
  String _comboSeleccionado = '';

  void _enviarPedido() {
    String nombre = _clienteController.text;
    String cantidadTexto = _cantidadController.text;

    String? mensajeError = ComidaControlador.validarPedido(
      nombre,
      cantidadTexto,
      _productoSeleccionado,
      _comboSeleccionado,
    );

    if (mensajeError != null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(mensajeError)));
      return;
    }

    int cantidad = int.parse(cantidadTexto);
    PedidoComidaModelo pedido = ComidaControlador.crearPedido(
      nombreCliente: nombre,
      producto: _productoSeleccionado,
      tipoCombo: _comboSeleccionado,
      cantidad: cantidad,
    );

    Navigator.pushNamed(context, '/notaVentaComida', arguments: pedido);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('JELYs HAMBURGER')),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: FondosApp.degradadoPrincipal,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TextoEtiqueta(
                texto: 'Ingrese los datos del pedido',
                estilo: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              FormularioPedido(
                clienteController: _clienteController,
                cantidadController: _cantidadController,
                productoSeleccionado: _productoSeleccionado,
                comboSeleccionado: _comboSeleccionado,
                productos: ComidaControlador.productos,
                combos: ComidaControlador.combos,
                alPresionarEnviar: _enviarPedido,
                alCambiarProducto: (valor) {
                  if (valor != null) {
                    setState(() {
                      _productoSeleccionado = valor;
                    });
                  }
                },
                alCambiarCombo: (valor) {
                  if (valor != null) {
                    setState(() {
                      _comboSeleccionado = valor;
                    });
                  }
                },
              ),
              const SizedBox(height: 60),
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
