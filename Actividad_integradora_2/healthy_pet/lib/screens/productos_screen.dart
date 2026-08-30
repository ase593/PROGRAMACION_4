import 'package:flutter/material.dart';
import '../data/productos_data.dart';
import '../widgets/producto_card.dart';

class ProductosScreen extends StatelessWidget {
  const ProductosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuestros productos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: productos.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.68,
          ),
          itemBuilder: (context, indice) {
            final producto = productos[indice];

            return ProductoCard(
              producto: producto,
              alPresionarFavorito: () {},
            );
          },
        ),
      ),
    );
  }
}