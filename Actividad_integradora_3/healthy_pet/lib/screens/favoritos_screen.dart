import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/favoritos_provider.dart';

class FavoritosScreen extends StatelessWidget {
  const FavoritosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis favoritos'),
      ),
      body: Consumer<FavoritosProvider>(
        builder: (context, proveedor, child) {
          final favoritos = proveedor.favoritos;

          if (favoritos.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 80,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Todavía no tienes favoritos',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Agrega productos desde el catálogo.',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: favoritos.length,
            separatorBuilder: (context, indice) {
              return const SizedBox(height: 8);
            },
            itemBuilder: (context, indice) {
              final producto = favoritos[indice];

              return Card(
                child: ListTile(
                  contentPadding: const EdgeInsets.all(10),
                  leading: Image.asset(
                    producto.imagen,
                    width: 70,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                  title: Text(
                    producto.nombre,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '\$${producto.precio.toStringAsFixed(2)}',
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      proveedor.eliminarFavorito(producto);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '${producto.nombre} eliminado de favoritos',
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.favorite),
                    tooltip: 'Eliminar de favoritos',
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}