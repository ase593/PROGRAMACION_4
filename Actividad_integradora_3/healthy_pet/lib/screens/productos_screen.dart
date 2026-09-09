import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/favoritos_provider.dart';
import '../widgets/producto_card.dart';
import '../widgets/titulo_seccion.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TituloSeccion(
              titulo: 'Nuestros productos',
              subtitulo:
                  'Snacks saludables para consentir a tu mascota',
            ),

            const SizedBox(height: 12),

            Expanded(
              child: Consumer<FavoritosProvider>(
                builder: (context, proveedor, child) {
                  final productos = proveedor.productos;

                  return GridView.builder(
                    itemCount: productos.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 0.64,
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}