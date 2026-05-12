class PedidoComidaModelo {
  final String nombreCliente;
  final String producto;
  final String tipoCombo;
  final int cantidad;
  final double subtotal;
  final double iva;
  final double total;

  PedidoComidaModelo({
    required this.nombreCliente,
    required this.producto,
    required this.tipoCombo,
    required this.cantidad,
    required this.subtotal,
    required this.iva,
    required this.total,
  });
}
