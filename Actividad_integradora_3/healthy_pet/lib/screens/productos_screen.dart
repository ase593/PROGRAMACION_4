import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/carrito_provider.dart';
import '../providers/favoritos_provider.dart';
import '../widgets/producto_card.dart';
import '../widgets/titulo_seccion.dart';
import 'carrito_screen.dart';
import 'favoritos_screen.dart';

class ProductosScreen extends StatelessWidget {
  const ProductosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuestros productos'),
        actions: [
          Consumer<CarritoProvider>(
            builder: (context, carrito, child) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const CarritoScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                    ),
                    tooltip: 'Mi carrito',
                  ),
                  if (carrito.cantidadTotal > 0)
                    Positioned(
                      right: 5,
                      top: 5,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .error,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '${carrito.cantidadTotal}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
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
                              duration:
                                  const Duration(seconds: 2),
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