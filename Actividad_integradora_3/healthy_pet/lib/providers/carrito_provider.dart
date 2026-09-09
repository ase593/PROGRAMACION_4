import 'package:flutter/foundation.dart';

import '../models/item_carrito.dart';
import '../models/producto.dart';

class CarritoProvider extends ChangeNotifier {
  final List<ItemCarrito> _items = [];

  List<ItemCarrito> get items {
    return List.unmodifiable(_items);
  }

  int get cantidadTotal {
    int cantidad = 0;

    for (final item in _items) {
      cantidad += item.cantidad;
    }

    return cantidad;
  }

  double get total {
    double resultado = 0;

    for (final item in _items) {
      resultado += item.subtotal;
    }

    return resultado;
  }

  bool contieneProducto(Producto producto) {
    return _items.any(
      (item) => item.nombre == producto.nombre,
    );
  }

  void agregarProducto(Producto producto) {
    final indice = _items.indexWhere(
      (item) => item.nombre == producto.nombre,
    );

    if (indice >= 0) {
      _items[indice].cantidad++;
    } else {
      _items.add(
        ItemCarrito(
          nombre: producto.nombre,
          imagen: producto.imagen,
          precio: producto.precio,
        ),
      );
    }

    notifyListeners();
  }

  void incrementarCantidad(ItemCarrito item) {
    item.cantidad++;
    notifyListeners();
  }

  void disminuirCantidad(ItemCarrito item) {
    if (item.cantidad > 1) {
      item.cantidad--;
      notifyListeners();
    }
  }

  void eliminarProducto(ItemCarrito item) {
    _items.remove(item);
    notifyListeners();
  }

  void vaciarCarrito() {
    _items.clear();
    notifyListeners();
  }
}