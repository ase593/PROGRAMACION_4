class Producto {
  final String nombre;
  final String descripcion;
  final double precio;
  final String imagen;
  bool favorito;

  Producto({
    required this.nombre,
    required this.descripcion,
    required this.precio,
    required this.imagen,
    this.favorito = false,
  });
}