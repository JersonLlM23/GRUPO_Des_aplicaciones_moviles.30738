import '../modelo/pedido_comida_modelo.dart';

class ComidaControlador {
  static final List<String> productos = [
    'Hamburguesa',
    'Salchipapa',
    'Hot Dog',
  ];

  static final List<String> combos = [
    'Solo producto',
    'Combo con papas',
    'Combo completo',
  ];

  static String? validarPedido(
    String nombre,
    String cantidadTexto,
    String producto,
    String combo,
  ) {
    if (nombre.trim().isEmpty) {
      return 'Ingrese el nombre del cliente';
    }

    if (nombre.trim().length < 3) {
      return 'El nombre debe tener al menos 3 caracteres';
    }

    if (nombre.trim().length > 30) {
      return 'El nombre no debe exceder los 20 caracteres';
    }

    if (!RegExp(r'^[A-Za-zÁÉÍÓÚáéíóúÑñ ]+$').hasMatch(nombre.trim())) {
      return 'Ingrese un nombre válido';
    }

    if (cantidadTexto.trim().isEmpty) {
      return 'Ingrese la cantidad';
    }

    int cantidad;
    try {
      cantidad = int.parse(cantidadTexto);
    } catch (e) {
      return 'La cantidad debe ser un número entero';
    }

    if (cantidad <= 0) {
      return 'La cantidad debe ser mayor a cero';
    }

    if (producto.isEmpty) {
      return 'Seleccione un producto';
    }

    if (combo.isEmpty) {
      return 'Seleccione un tipo de combo';
    }

    return null;
  }

  static double precioProducto(String producto) {
    if (producto == 'Hamburguesa') {
      return 3.00;
    }

    if (producto == 'Salchipapa') {
      return 2.00;
    }

    if (producto == 'Hot Dog') {
      return 2.50;
    }

    return 0.0;
  }

  static double precioCombo(String combo) {
    if (combo == 'Combo con papas') {
      return 1.00;
    }

    if (combo == 'Combo completo') {
      return 2.50;
    }

    return 0.0;
  }

  static double calcularSubtotal(
    double precioBase,
    double precioCombo,
    int cantidad,
  ) {
    return (precioBase + precioCombo) * cantidad;
  }

  static double calcularIva(double subtotal) {
    return subtotal * 0.15;
  }

  static double calcularTotal(double subtotal, double iva) {
    return subtotal + iva;
  }

  static PedidoComidaModelo crearPedido({
    required String nombreCliente,
    required String producto,
    required String tipoCombo,
    required int cantidad,
  }) {
    double precioBase = precioProducto(producto);
    double valorCombo = precioCombo(tipoCombo);
    double subtotal = calcularSubtotal(precioBase, valorCombo, cantidad);
    double iva = calcularIva(subtotal);
    double total = calcularTotal(subtotal, iva);

    return PedidoComidaModelo(
      nombreCliente: nombreCliente.trim(),
      producto: producto,
      tipoCombo: tipoCombo,
      cantidad: cantidad,
      subtotal: subtotal,
      iva: iva,
      total: total,
    );
  }
}
