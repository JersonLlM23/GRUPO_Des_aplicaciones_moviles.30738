/* 
Ejercicio No. 1:
Se ingresa a un programa una medida expresada en metros, se debe hacer un procedimiento que permita calcular los siguientes items.
Yardas 1 yarda = 3 pies
Pies 1 pie = 12 pulgadas
Centímetros 1 metro = 100centímetros
Pulgadas 1 metro = 2.54 centímetros
 */

class Ejercicio1Model {
  final double metros;
  final double centimetros;
  final double pulgadas;
  final double pies;
  final double yardas;

  Ejercicio1Model({
    required this.metros,
    required this.centimetros,
    required this.pulgadas,
    required this.pies,
    required this.yardas,
  });

  /* Método para calcular conversiones */
  static Ejercicio1Model calcular(double metros) {
    final centimetros = metros * 100;
    final pulgadas = centimetros / 2.54;
    final pies = pulgadas / 12;
    final yardas = pies / 3;

    return Ejercicio1Model(
      metros: metros,
      centimetros: centimetros,
      pulgadas: pulgadas,
      pies: pies,
      yardas: yardas,
    );
  }
}

/* Ejercicio No. 2 

Diseñe un algoritmo que exprese la capacidad de un disco duro en Megabytes, Kilobytes y Bytes, conociendo la capacidad del disco en Gigabytes. 
Considere que: 
1 Kilobyte = 1024 Bytes
1 Megabyte = 1024 Kilobytes
1 Gigabyte = 1024 Megabytes

 */

class Ejercicio2Model {
  final double gigabytes;
  final double megabytes;
  final double kilobytes;
  final double bytes;

  Ejercicio2Model({
    required this.gigabytes,
    required this.megabytes,
    required this.kilobytes,
    required this.bytes,
  });

  static Ejercicio2Model calcular(double gigabytes) {
    final megabytes = gigabytes * 1024;
    final kilobytes = megabytes * 1024;
    final bytes = kilobytes * 1024;

    return Ejercicio2Model(
      gigabytes: gigabytes,
      megabytes: megabytes,
      kilobytes: kilobytes,
      bytes: bytes,
    );
  }
}

/* 
Ejercicio No. 3 

Una compañía de seguros está abriendo un depto. de finanzas y estableció un programa para captar clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza es menor que $50000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que $50000 la cuota a pagar será el 2% del monto. La financiera desea determinar cuál será la cuota que debe pagar un cliente.

*/

class Ejercicio3Model {
  final double monto;
  final double cuota;

  Ejercicio3Model({required this.monto, required this.cuota});

  static Ejercicio3Model calcular(double monto) {
    double cuota;

    if (monto < 50000) {
      cuota = monto * 0.03;
    } else {
      cuota = monto * 0.02;
    }

    return Ejercicio3Model(monto: monto, cuota: cuota);
  }
}

/* 
Ejercicio No. 4

Se tiene registrado la producción (unidades) logradas por un operario a lo largo de la semana (lunes a sábado). Elabore un algoritmo que nos muestre o nos diga si el operario recibirá incentivos sabiendo que el promedio de producción mínima es de 100 unidades semanales.

 */
class Ejercicio4Model {
  final double lunes;
  final double martes;
  final double miercoles;
  final double jueves;
  final double viernes;
  final double sabado;
  final double promedio;
  final bool recibeIncentivo;

  Ejercicio4Model({
    required this.lunes,
    required this.martes,
    required this.miercoles,
    required this.jueves,
    required this.viernes,
    required this.sabado,
    required this.promedio,
    required this.recibeIncentivo,
  });

  static Ejercicio4Model calcular(
    double lunes,
    double martes,
    double miercoles,
    double jueves,
    double viernes,
    double sabado,
  ) {
    final suma = lunes + martes + miercoles + jueves + viernes + sabado;
    final promedio = suma / 6;
    bool recibeIncentivo;

    if (promedio >= 100) {
      recibeIncentivo = true;
    } else {
      recibeIncentivo = false;
    }

    return Ejercicio4Model(
      lunes: lunes,
      martes: martes,
      miercoles: miercoles,
      jueves: jueves,
      viernes: viernes,
      sabado: sabado,
      promedio: promedio,
      recibeIncentivo: recibeIncentivo,
    );
  }
}

/* 
Ejercicio No. 5
En un supermercado se hace una promoción, mediante la cual el cliente obtiene un descuento dependiendo de un número que se escoge al azar. Si el número escogido es menor que 74 el descuento es del 15% sobre el total de la compra, si es mayor o igual a 74 el descuento es del 20%. Obtener cuánto dinero se le descuenta.
 */

class Ejercicio5Model {
  final double compra;
  final double numero;
  final double descuento;

  Ejercicio5Model({
    required this.compra,
    required this.numero,
    required this.descuento,
  });

  static Ejercicio5Model calcular(double compra, double numero) {
    double descuento;

    if (numero < 74) {
      descuento = compra * 0.15;
    } else {
      descuento = compra * 0.20;
    }

    return Ejercicio5Model(
      compra: compra,
      numero: numero,
      descuento: descuento,
    );
  }
}
