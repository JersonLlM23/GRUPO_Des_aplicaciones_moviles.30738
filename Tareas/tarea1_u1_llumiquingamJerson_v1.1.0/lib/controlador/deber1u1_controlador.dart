import '../modelo/deber1u1_modelo.dart';

class Ejercicio1Controlador {
  String procesar(String metros) {
    try {
      final m = double.parse(metros);

      if (m < 0) {
        return 'Ingresa un valor positivo';
      }

      final resultado = Ejercicio1Model.calcular(m);

      return '''
Conversiones de $metros metros:
Centímetros: ${resultado.centimetros.toStringAsFixed(2)} cm
Pulgadas: ${resultado.pulgadas.toStringAsFixed(2)} pulgadas
Pies: ${resultado.pies.toStringAsFixed(2)} pies
Yardas: ${resultado.yardas.toStringAsFixed(2)} yardas
      ''';
    } catch (e) {
      return 'Ingresa un número válido';
    }
  }
}

class Ejercicio2Controlador {
  String procesar(String gigabytes) {
    try {
      final gb = double.parse(gigabytes);

      if (gb < 0) {
        return 'Ingresa un valor positivo';
      }

      final resultado = Ejercicio2Model.calcular(gb);

      return '''
Almacenamiento del disco $gigabytes GB:
Megabytes: ${resultado.megabytes.toStringAsFixed(2)} MB
Kilobytes: ${resultado.kilobytes.toStringAsFixed(2)} KB
Bytes: ${resultado.bytes.toStringAsFixed(2)} bytes
      ''';
    } catch (e) {
      return 'Ingresa un número válido';
    }
  }
}

class Ejercicio3Controlador {
  String procesar(String monto) {
    try {
      final valor = double.parse(monto);

      if (valor < 0) {
        return 'Ingresa un valor positivo';
      }

      final resultado = Ejercicio3Model.calcular(valor);

      return '''
Monto de la fianza: ${resultado.monto.toStringAsFixed(2)}
Cuota a pagar: ${resultado.cuota.toStringAsFixed(2)}
      ''';
    } catch (e) {
      return 'Ingresa un número válido';
    }
  }
}

class Ejercicio4Controlador {
  String procesar(
    String lunes,
    String martes,
    String miercoles,
    String jueves,
    String viernes,
    String sabado,
  ) {
    try {
      final l = double.parse(lunes);
      final m = double.parse(martes);
      final mi = double.parse(miercoles);
      final j = double.parse(jueves);
      final v = double.parse(viernes);
      final s = double.parse(sabado);

      if (l < 0 || m < 0 || mi < 0 || j < 0 || v < 0 || s < 0) {
        return 'Ingresa valores positivos';
      }

      final resultado = Ejercicio4Model.calcular(l, m, mi, j, v, s);
      String mensaje;

      if (resultado.recibeIncentivo) {
        mensaje = 'Sí recibe incentivo';
      } else {
        mensaje = 'No recibe incentivo';
      }

      return '''
Promedio semanal: ${resultado.promedio.toStringAsFixed(2)}
$mensaje
      ''';
    } catch (e) {
      return 'Ingresa números válidos';
    }
  }
}

class Ejercicio5Controlador {
  String procesar(String compra, String numero) {
    try {
      final total = double.parse(compra);
      final n = double.parse(numero);

      if (total < 0 || n < 0) {
        return 'Ingresa valores positivos';
      }

      final resultado = Ejercicio5Model.calcular(total, n);

      return '''
Total de compra: ${resultado.compra.toStringAsFixed(2)}
Número escogido: ${resultado.numero.toStringAsFixed(2)}
Descuento: ${resultado.descuento.toStringAsFixed(2)}
      ''';
    } catch (e) {
      return 'Ingresa números válidos';
    }
  }
}
