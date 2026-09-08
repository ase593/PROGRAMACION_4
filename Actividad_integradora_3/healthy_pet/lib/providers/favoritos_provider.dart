import 'package:flutter/foundation.dart';

import '../data/productos_data.dart' as datos;
import '../models/producto.dart';

class FavoritosProvider extends ChangeNotifier {
  final List<Producto> _productos = datos.productos;

  List<Producto> get productos => List.unmodifiable(_productos);

  List<Producto> get favoritos {
    return _productos
        .where((producto) => producto.favorito)
        .toList();
  }

  bool esFavorito(Producto producto) {
    return producto.favorito;
  }

  void cambiarFavorito(Producto producto) {
    producto.favorito = !producto.favorito;
    notifyListeners();
  }

  void eliminarFavorito(Producto producto) {
    if (producto.favorito) {
      producto.favorito = false;
      notifyListeners();
    }
  }
}