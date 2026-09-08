import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/producto.dart';
import '../providers/favoritos_provider.dart';

class DetalleProductoScreen extends StatefulWidget {
  final Producto producto;

  const DetalleProductoScreen({
    super.key,
    required this.producto,
  });

  @override
  State<DetalleProductoScreen> createState() =>
      _DetalleProductoScreenState();
}

class _DetalleProductoScreenState extends State<DetalleProductoScreen> {
  int cantidad = 1;

  void aumentarCantidad() {
    setState(() {
      cantidad++;
    });
  }

  void disminuirCantidad() {
    if (cantidad > 1) {
      setState(() {
        cantidad--;
      });
    }
  }

  void mostrarInformacion() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: [
              const Icon(Icons.pets),
              const SizedBox(width: 10),
              Expanded(
                child: Text(widget.producto.nombre),
              ),
            ],
          ),
          content: const Text(
            'Este producto forma parte de la selección '
            'Healthy Pet. Está pensado como una alternativa '
            'deliciosa para consentir a tu mascota.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

 void agregarAFavoritos() {
  final proveedor = context.read<FavoritosProvider>();

  proveedor.cambiarFavorito(widget.producto);

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        proveedor.esFavorito(widget.producto)
            ? '${widget.producto.nombre} agregado a favoritos'
            : '${widget.producto.nombre} eliminado de favoritos',
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    final double subtotal = widget.producto.precio * cantidad;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del producto'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  widget.producto.imagen,
                  height: 250,
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                widget.producto.nombre,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                '\$${widget.producto.precio.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Divider(height: 35),

              const Text(
                'Descripción',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                widget.producto.descripcion,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                'Cantidad',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      onPressed: disminuirCantidad,
                      icon: const Icon(Icons.remove),
                    ),
                  ),

                  Expanded(
                    child: Center(
                      child: Text(
                        '$cantidad',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      onPressed: aumentarCantidad,
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Subtotal:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$${subtotal.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: agregarAFavoritos,
                  icon: Icon(
                    context.watch<FavoritosProvider>().esFavorito(
                          widget.producto,
                        )
                        ? Icons.favorite
                        : Icons.favorite_border,
                  ),
                  label: Text(
                    context.watch<FavoritosProvider>().esFavorito(
                          widget.producto,
                        )
                        ? 'Quitar de favoritos'
                        : 'Agregar a favoritos',
                  ),
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: mostrarInformacion,
                  icon: const Icon(Icons.info_outline),
                  label: const Text('Ver información'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}