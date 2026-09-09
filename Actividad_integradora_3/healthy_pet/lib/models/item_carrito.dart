class ItemCarrito {
  final String nombre;
  final String imagen;
  final double precio;
  int cantidad;

  ItemCarrito({
    required this.nombre,
    required this.imagen,
    required this.precio,
    this.cantidad = 1,
  });

  double get subtotal {
    return precio * cantidad;
  }
}