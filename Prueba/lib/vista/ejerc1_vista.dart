import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../controlador/ejerc1_controlador.dart';

class Ejerc1View extends StatefulWidget {
  const Ejerc1View({super.key});

  @override
  State<Ejerc1View> createState() => _Ejerc1ViewState();
}

class _Ejerc1ViewState extends State<Ejerc1View> {
  final _ctrl = Ejerc1Controlador();
  final _numero1Controller = TextEditingController();
  final _numero2Controller = TextEditingController();
  String _mensajeResultado = '';

  void _onComprobar() {
    _ctrl.comprobar(_numero1Controller.text, _numero2Controller.text);
    setState(() {
      _mensajeResultado = _ctrl.modelo.mensaje;
    });
  }

  @override
  void dispose() {
    _numero1Controller.dispose();
    _numero2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Primos Relativos - MVC')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Átomo: NumberInput (texto)
            TextField(
              controller: _numero1Controller,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                labelText: 'Número A',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            // Átomo: NumberInput (texto)
            TextField(
              controller: _numero2Controller,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                labelText: 'Número B',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Átomo: PrimaryButton
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _onComprobar,
                child: const Text('Comprobar'),
              ),
            ),
            const SizedBox(height: 16),
            // Resultado con if/else (sin ternario)
            if (_mensajeResultado.isEmpty)
              Text(
                'Ingrese valores y presione Comprobar',
                style: Theme.of(context).textTheme.bodyLarge,
              )
            else
              Text(
                _mensajeResultado,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
          ],
        ),
      ),
    );
  }
}
