import 'package:flutter/material.dart';
import '../controlador/deber1u1_controlador.dart';

/* -- Átomos -- */
/* Label */
class Label extends StatelessWidget {
  final String texto;
  Label(this.texto, {super.key});

  @override
  Widget build(BuildContext context) =>
      Text(texto, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold));
}

/* Button */
class PryButton extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;
  PryButton({super.key, required this.texto, required this.onPressed});

  @override
  Widget build(BuildContext context) =>
      ElevatedButton(onPressed: onPressed, child: Text(texto));
}

/* Caja de texto */
class MetroField extends StatelessWidget {
  final TextEditingController controller;
  const MetroField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) => TextField(
    controller: controller,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      hintText: 'Ingresa metros',
      border: OutlineInputBorder(),
    ),
  );
}

/* -- Organismo -- */
class CardConversion extends StatefulWidget {
  const CardConversion({super.key});

  @override
  State<CardConversion> createState() => _CardConversionState();
}

class _CardConversionState extends State<CardConversion> {
  final metroController = TextEditingController();
  String resultado = '';
  final controlador = Ejercicio1Controlador();

  void _convertir() {
    setState(() {
      resultado = controlador.procesar(metroController.text);
    });
  }

  void _reiniciar() {
    setState(() {
      metroController.clear();
      resultado = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 128, 181, 233),
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Label('Convertir Metros'),
            SizedBox(height: 15),
            MetroField(controller: metroController),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: PryButton(texto: 'Convertir', onPressed: _convertir),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: PryButton(texto: 'Reiniciar', onPressed: _reiniciar),
                ),
              ],
            ),
            SizedBox(height: 15),
            if (resultado.isNotEmpty)
              Text(resultado, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

class DiskField extends StatelessWidget {
  final TextEditingController controller;
  const DiskField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) => TextField(
    controller: controller,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      hintText: 'Ingresa gigabytes',
      border: OutlineInputBorder(),
    ),
  );
}

class CardDisco extends StatefulWidget {
  const CardDisco({super.key});

  @override
  State<CardDisco> createState() => _CardDiscoState();
}

class _CardDiscoState extends State<CardDisco> {
  final discoController = TextEditingController();
  String resultado = '';
  final controlador = Ejercicio2Controlador();

  void _convertir() {
    setState(() {
      resultado = controlador.procesar(discoController.text);
    });
  }

  void _reiniciar() {
    setState(() {
      discoController.clear();
      resultado = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 115, 231, 115),
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Label('Capacidad del Disco'),
            SizedBox(height: 15),
            DiskField(controller: discoController),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: PryButton(texto: 'Convertir', onPressed: _convertir),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: PryButton(texto: 'Reiniciar', onPressed: _reiniciar),
                ),
              ],
            ),
            SizedBox(height: 15),
            if (resultado.isNotEmpty)
              Text(resultado, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

class MoneyField extends StatelessWidget {
  final TextEditingController controller;
  const MoneyField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) => TextField(
    controller: controller,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      hintText: 'Ingresa el monto de la fianza',
      border: OutlineInputBorder(),
    ),
  );
}

class CardFianza extends StatefulWidget {
  const CardFianza({super.key});

  @override
  State<CardFianza> createState() => _CardFianzaState();
}

class _CardFianzaState extends State<CardFianza> {
  final montoController = TextEditingController();
  String resultado = '';
  final controlador = Ejercicio3Controlador();

  void _calcular() {
    setState(() {
      resultado = controlador.procesar(montoController.text);
    });
  }

  void _reiniciar() {
    setState(() {
      montoController.clear();
      resultado = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 255, 224, 178),
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Label('Cuota de la Fianza'),
            SizedBox(height: 15),
            MoneyField(controller: montoController),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: PryButton(texto: 'Calcular', onPressed: _calcular),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: PryButton(texto: 'Reiniciar', onPressed: _reiniciar),
                ),
              ],
            ),
            SizedBox(height: 15),
            if (resultado.isNotEmpty)
              Text(resultado, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

class DayField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  const DayField({super.key, required this.hint, required this.controller});

  @override
  Widget build(BuildContext context) => TextField(
    controller: controller,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(hintText: hint, border: OutlineInputBorder()),
  );
}

class CardProduccion extends StatefulWidget {
  const CardProduccion({super.key});

  @override
  State<CardProduccion> createState() => _CardProduccionState();
}

class _CardProduccionState extends State<CardProduccion> {
  final lunesController = TextEditingController();
  final martesController = TextEditingController();
  final miercolesController = TextEditingController();
  final juevesController = TextEditingController();
  final viernesController = TextEditingController();
  final sabadoController = TextEditingController();
  String resultado = '';
  final controlador = Ejercicio4Controlador();

  void _evaluar() {
    setState(() {
      resultado = controlador.procesar(
        lunesController.text,
        martesController.text,
        miercolesController.text,
        juevesController.text,
        viernesController.text,
        sabadoController.text,
      );
    });
  }

  void _reiniciar() {
    setState(() {
      lunesController.clear();
      martesController.clear();
      miercolesController.clear();
      juevesController.clear();
      viernesController.clear();
      sabadoController.clear();
      resultado = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 224, 247, 250),
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Label('Producción Semanal'),
            SizedBox(height: 12),
            DayField(hint: 'Lunes', controller: lunesController),
            SizedBox(height: 8),
            DayField(hint: 'Martes', controller: martesController),
            SizedBox(height: 8),
            DayField(hint: 'Miércoles', controller: miercolesController),
            SizedBox(height: 8),
            DayField(hint: 'Jueves', controller: juevesController),
            SizedBox(height: 8),
            DayField(hint: 'Viernes', controller: viernesController),
            SizedBox(height: 8),
            DayField(hint: 'Sábado', controller: sabadoController),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: PryButton(texto: 'Evaluar', onPressed: _evaluar),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: PryButton(texto: 'Reiniciar', onPressed: _reiniciar),
                ),
              ],
            ),
            SizedBox(height: 15),
            if (resultado.isNotEmpty)
              Text(resultado, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

class PurchaseField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  const PurchaseField({
    super.key,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) => TextField(
    controller: controller,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(hintText: hint, border: OutlineInputBorder()),
  );
}

class CardPromocion extends StatefulWidget {
  const CardPromocion({super.key});

  @override
  State<CardPromocion> createState() => _CardPromocionState();
}

class _CardPromocionState extends State<CardPromocion> {
  final compraController = TextEditingController();
  final numeroController = TextEditingController();
  String resultado = '';
  final controlador = Ejercicio5Controlador();

  void _calcular() {
    setState(() {
      resultado = controlador.procesar(
        compraController.text,
        numeroController.text,
      );
    });
  }

  void _reiniciar() {
    setState(() {
      compraController.clear();
      numeroController.clear();
      resultado = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 255, 236, 179),
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Label('Descuento en Supermercado'),
            SizedBox(height: 12),
            PurchaseField(
              hint: 'Total de la compra',
              controller: compraController,
            ),
            SizedBox(height: 8),
            PurchaseField(hint: 'Número al azar', controller: numeroController),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: PryButton(
                    texto: 'Calcular descuento',
                    onPressed: _calcular,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: PryButton(texto: 'Reiniciar', onPressed: _reiniciar),
                ),
              ],
            ),
            SizedBox(height: 15),
            if (resultado.isNotEmpty)
              Text(resultado, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

/* -- Página -- */
class MenuPrincipalPage extends StatelessWidget {
  const MenuPrincipalPage({super.key});

  Widget _menuButton(BuildContext context, String texto, Widget page) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Text(texto),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deber No. 1 - Unidad 1'),
        backgroundColor: const Color.fromARGB(255, 43, 140, 189),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                'Universidad de las Fuerzas Armadas ESPE\nCarrera de Ingeniería en Software\nDesarrollo de aplicaciones móviles',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Text('Selecciona un ejercicio', style: TextStyle(fontSize: 16)),
            SizedBox(height: 15),
            _menuButton(
              context,
              'Ejercicio 1 - Conversión de Metros',
              Ejercicio1Page(),
            ),
            _menuButton(
              context,
              'Ejercicio 2 - Capacidad de Disco',
              Ejercicio2Page(),
            ),
            _menuButton(
              context,
              'Ejercicio 3 - Cuota de Fianza',
              Ejercicio3Page(),
            ),
            _menuButton(
              context,
              'Ejercicio 4 - Producción Semanal',
              Ejercicio4Page(),
            ),
            _menuButton(
              context,
              'Ejercicio 5 - Descuento Supermercado',
              Ejercicio5Page(),
            ),
          ],
        ),
      ),
    );
  }
}

class NavegacionEjercicio extends StatelessWidget {
  final Widget? anteriorPage;
  final Widget? siguientePage;

  const NavegacionEjercicio({super.key, this.anteriorPage, this.siguientePage});

  @override
  Widget build(BuildContext context) {
    VoidCallback? onAnterior;
    if (anteriorPage != null) {
      onAnterior = () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => anteriorPage!),
        );
      };
    }

    VoidCallback? onSiguiente;
    if (siguientePage != null) {
      onSiguiente = () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => siguientePage!),
        );
      };
    }

    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onAnterior,
            child: Text('Anterior ejercicio'),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MenuPrincipalPage(),
                ),
              );
            },
            child: Text('Pagina principal'),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: ElevatedButton(
            onPressed: onSiguiente,
            child: Text('Siguiente ejercicio'),
          ),
        ),
      ],
    );
  }
}

class Ejercicio1Page extends StatelessWidget {
  const Ejercicio1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 1 - Conversión de Metros')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              color: const Color.fromARGB(255, 128, 181, 233),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ejercicio No.1 :Conversión de Metros',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Se ingresa una medida expresada en metros y se calculan sus equivalentes en otras unidades.',
                    ),
                    SizedBox(height: 8),
                    Text('1 yarda = 3 pies'),
                    Text('1 pie = 12 pulgadas'),
                    Text('1 metro = 100 centímetros'),
                    Text('1 metro = 2.54 centímetros'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            CardConversion(),
            SizedBox(height: 10),
            NavegacionEjercicio(siguientePage: Ejercicio2Page()),
          ],
        ),
      ),
    );
  }
}

class Ejercicio2Page extends StatelessWidget {
  const Ejercicio2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 2 - Capacidad de Disco')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              color: const Color.fromARGB(255, 115, 231, 115),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ejercicio No. 2 - Capacidad de Disco Duro',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Diseñe un algoritmo que exprese la capacidad de un disco duro en Megabytes, Kilobytes y Bytes, conociendo la capacidad del disco en Gigabytes.',
                    ),
                    SizedBox(height: 8),
                    Text('1 Kilobyte = 1024 Bytes'),
                    Text('1 Megabyte = 1024 Kilobytes'),
                    Text('1 Gigabyte = 1024 Megabytes'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            CardDisco(),
            SizedBox(height: 10),
            NavegacionEjercicio(
              anteriorPage: Ejercicio1Page(),
              siguientePage: Ejercicio3Page(),
            ),
          ],
        ),
      ),
    );
  }
}

class Ejercicio3Page extends StatelessWidget {
  const Ejercicio3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 3 - Cuota de Fianza')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              color: const Color.fromARGB(255, 255, 224, 178),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ejercicio No. 3 - Cuota de Fianza',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Si el monto de la fianza es menor que 50000 la cuota es del 3%. Si es mayor o igual a 50000 la cuota es del 2%.',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            CardFianza(),
            SizedBox(height: 10),
            NavegacionEjercicio(
              anteriorPage: Ejercicio2Page(),
              siguientePage: Ejercicio4Page(),
            ),
          ],
        ),
      ),
    );
  }
}

class Ejercicio4Page extends StatelessWidget {
  const Ejercicio4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 4 - Producción Semanal')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              color: const Color.fromARGB(255, 224, 247, 250),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ejercicio No. 4 - Producción del Operario',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Se registra la producción de lunes a sábado y se evalúa si el promedio semanal es al menos 100 para recibir incentivo.',
                    ),
                    SizedBox(height: 8),
                    Text('Promedio mayor o igual a 100 -> recibe incentivo'),
                    Text('Promedio menor a 100 -> no recibe incentivo'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            CardProduccion(),
            SizedBox(height: 10),
            NavegacionEjercicio(
              anteriorPage: Ejercicio3Page(),
              siguientePage: Ejercicio5Page(),
            ),
          ],
        ),
      ),
    );
  }
}

class Ejercicio5Page extends StatelessWidget {
  const Ejercicio5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 5 - Descuento Supermercado')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              color: const Color.fromARGB(255, 255, 236, 179),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ejercicio No. 5 - Descuento en Supermercado',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Si el número al azar es menor que 74 el descuento es 15%, si es mayor o igual a 74 el descuento es 20% sobre la compra.',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            CardPromocion(),
            SizedBox(height: 10),
            NavegacionEjercicio(anteriorPage: Ejercicio4Page()),
          ],
        ),
      ),
    );
  }
}
