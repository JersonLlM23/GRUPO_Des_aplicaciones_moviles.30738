import '../modelo/ejerc1_modelo.dart';

class Ejerc1Controlador {
  final Ejerc1Modelo modelo = Ejerc1Modelo();

  // Calcular MCD
  int calcularMcd(int a, int b) {
    if (a == 0 && b == 0) {
      return 0;
    }
    a = a.abs();
    b = b.abs();
    while (b != 0) {
      final temp = a % b;
      a = b;
      b = temp;
    }
    return a;
  }

  // Validacion de primos
  void comprobar(String entrada1, String entrada2) {
    // no null
    if (entrada1.trim().isEmpty || entrada2.trim().isEmpty) {
      modelo.mensaje = 'Ingrese ambos números.';
      return;
    }

    int numero1;
    int numero2;

    try {
      numero1 = int.parse(entrada1.trim());
      numero2 = int.parse(entrada2.trim());
    } catch (e) {
      modelo.mensaje = 'Ingrese enteros válidos.';
      return;
    }

    // Validar que sean positivos
    if (numero1 <= 0 || numero2 <= 0) {
      modelo.mensaje = 'Los números deben ser enteros positivos.';
      return;
    }

    // Guardar  enmodelo
    modelo.numero1 = numero1;
    modelo.numero2 = numero2;

    final mcd = calcularMcd(numero1, numero2);

    if (mcd == 1) {
      modelo.resultado = 1;
      modelo.mensaje = 'Son primos relativos!!';
    } else {
      modelo.resultado = 0;
      modelo.mensaje = 'No son primos relativos';
    }
  }
}
