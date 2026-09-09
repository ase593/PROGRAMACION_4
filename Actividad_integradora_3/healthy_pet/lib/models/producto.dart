class Producto {
  final String nombre;
  final String descripcion;
  final double precio;
  final String imagen;
  final String categoria;
  final String peso;
  final int stock;
  bool favorito;

  Producto({
    required this.nombre,
    required this.descripcion,
    required this.precio,
    required this.imagen,
    required this.categoria,
    required this.peso,
    required this.stock,
    this.favorito = false,
  });
}