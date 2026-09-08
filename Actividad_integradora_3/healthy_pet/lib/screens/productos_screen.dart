import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/favoritos_provider.dart';
import '../widgets/producto_card.dart';

import 'favoritos_screen.dart';

class ProductosScreen extends StatelessWidget {
  const ProductosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuestros productos'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavoritosScreen(),
                ),
              );
            },
            icon: const Icon(Icons.favorite),
            tooltip: 'Mis favoritos',
          ),
        ],
      ),
      body: Consumer<FavoritosProvider>(
        builder: (context, proveedor, child) {
          final productos = proveedor.productos;

          return Padding(
            padding: const EdgeInsets.all(8),
            child: GridView.builder(
              itemCount: productos.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.68,
              ),
              itemBuilder: (context, indice) {
                final producto = productos[indice];

                return ProductoCard(
                  producto: producto,
                  alPresionarFavorito: () {
                    proveedor.cambiarFavorito(producto);

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          proveedor.esFavorito(producto)
                              ? '${producto.nombre} agregado a favoritos'
                              : '${producto.nombre} eliminado de favoritos',
                        ),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}