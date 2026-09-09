import 'package:flutter/material.dart';

import '../models/producto.dart';
import '../screens/detalle_producto_screen.dart';

class ProductoCard extends StatelessWidget {
  final Producto producto;
  final VoidCallback alPresionarFavorito;

  const ProductoCard({
    super.key,
    required this.producto,
    required this.alPresionarFavorito,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetalleProductoScreen(
                producto: producto,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        producto.imagen,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: IconButton(
                        onPressed: alPresionarFavorito,
                        icon: Icon(
                          producto.favorito
                              ? Icons.favorite
                              : Icons.favorite_border,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),
Text(
  producto.nombre,
  maxLines: 1,
  overflow: TextOverflow.ellipsis,
  style: const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  ),
),

const SizedBox(height: 4),

Row(
  children: [
    const Icon(
      Icons.category_outlined,
      size: 16,
    ),
    const SizedBox(width: 4),
    Text(producto.categoria),
    const Spacer(),
    Text(producto.peso),
  ],
),

const SizedBox(height: 4),

Text(
  producto.descripcion,
  maxLines: 2,
  overflow: TextOverflow.ellipsis,
),

const SizedBox(height: 4),

Text(
  'Stock disponible: ${producto.stock}',
  style: const TextStyle(
    fontSize: 12,
  ),
),

const SizedBox(height: 8),

Text(
  '\$${producto.precio.toStringAsFixed(2)}',
  style: const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  ),
),
            ],
          ),
        ),
      ),
    );
  }
}