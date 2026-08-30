import 'package:flutter/material.dart';

import '../data/productos_data.dart';

class FavoritosScreen extends StatefulWidget {
  const FavoritosScreen({super.key});

  @override
  State<FavoritosScreen> createState() => _FavoritosScreenState();
}

class _FavoritosScreenState extends State<FavoritosScreen> {
  void eliminarFavorito(int indice) {
    final favoritos = productos.where((producto) {
      return producto.favorito;
    }).toList();

    final producto = favoritos[indice];

    setState(() {
      producto.favorito = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '${producto.nombre} eliminado de favoritos',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final favoritos = productos.where((producto) {
      return producto.favorito;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis favoritos'),
      ),
      body: favoritos.isEmpty
          ? const Center(
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
            )
          : ListView.separated(
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
                        eliminarFavorito(indice);
                      },
                      icon: const Icon(Icons.favorite),
                      tooltip: 'Eliminar de favoritos',
                    ),
                  ),
                );
              },
            ),
    );
  }
}