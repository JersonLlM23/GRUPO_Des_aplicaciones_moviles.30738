import 'package:flutter/material.dart';
import '../../temas/index.dart';

class BotonPersonalizado extends StatelessWidget {
  final String texto;
  final VoidCallback alPresionar;

  const BotonPersonalizado({
    super.key,
    required this.texto,
    required this.alPresionar,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: alPresionar,
        style: TemaBotones.estiloBotonPrimario,
        child: Text(
          texto,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
