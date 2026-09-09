import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/producto.dart';
import '../providers/carrito_provider.dart';
import '../providers/favoritos_provider.dart';
import 'carrito_screen.dart';

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

class _DetalleProductoScreenState
    extends State<DetalleProductoScreen> {
  int cantidad = 1;

  void aumentarCantidad() {
    if (cantidad < widget.producto.stock) {
      setState(() {
        cantidad++;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'No puedes superar el stock disponible.',
          ),
          duration: Duration(seconds: 2),
        ),
      );
    }
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
                child: Text(
                  widget.producto.nombre,
                ),
              ),
            ],
          ),
          content: Text(
            'Este producto forma parte de la selección '
            'Healthy Pet. Está pensado como una alternativa '
            'deliciosa para consentir a tu mascota.\n\n'
            'Categoría: ${widget.producto.categoria}\n'
            'Peso: ${widget.producto.peso}\n'
            'Stock disponible: ${widget.producto.stock}',
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

    if (!mounted) {
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          proveedor.esFavorito(widget.producto)
              ? '${widget.producto.nombre} agregado a favoritos'
              : '${widget.producto.nombre} eliminado de favoritos',
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void agregarAlCarrito() {
    final carrito = context.read<CarritoProvider>();

    carrito.agregarProducto(
      widget.producto,
      cantidad: cantidad,
    );

    if (!mounted) {
      return;
    }

    final navigator = Navigator.of(context);
    final messenger = ScaffoldMessenger.of(context);

    messenger.hideCurrentSnackBar();

    messenger.showSnackBar(
      SnackBar(
        content: Text(
          '$cantidad x ${widget.producto.nombre} agregado al carrito',
        ),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'VER',
          onPressed: () {
            messenger.hideCurrentSnackBar();

            navigator.push(
              MaterialPageRoute(
                builder: (_) => const CarritoScreen(),
              ),
            );
          },
        ),
      ),
    );
  }

  void abrirCarrito() {
    if (!mounted) {
      return;
    }

    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const CarritoScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double subtotal =
        widget.producto.precio * cantidad;

    final bool esFavorito =
        context.watch<FavoritosProvider>().esFavorito(
              widget.producto,
            );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del producto'),
        actions: [
          Consumer<CarritoProvider>(
            builder: (context, carrito, child) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  IconButton(
                    onPressed: abrirCarrito,
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
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
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

              const SizedBox(height: 8),

              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  Chip(
                    avatar: const Icon(
                      Icons.category_outlined,
                      size: 18,
                    ),
                    label: Text(
                      widget.producto.categoria,
                    ),
                  ),
                  Chip(
                    avatar: const Icon(
                      Icons.scale_outlined,
                      size: 18,
                    ),
                    label: Text(
                      widget.producto.peso,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              Text(
                'Stock disponible: ${widget.producto.stock}',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
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
                        color: Theme.of(context)
                            .colorScheme
                            .primary,
                      ),
                      borderRadius:
                          BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      onPressed: disminuirCantidad,
                      icon: const Icon(Icons.remove),
                      tooltip: 'Disminuir cantidad',
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
                        color: Theme.of(context)
                            .colorScheme
                            .primary,
                      ),
                      borderRadius:
                          BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      onPressed: aumentarCantidad,
                      icon: const Icon(Icons.add),
                      tooltip: 'Aumentar cantidad',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(12),
                  border: Border.all(
                    color: Theme.of(context)
                        .colorScheme
                        .primary,
                  ),
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
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
                  onPressed: agregarAlCarrito,
                  icon: const Icon(
                    Icons.add_shopping_cart,
                  ),
                  label: const Text(
                    'Agregar al carrito',
                  ),
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: agregarAFavoritos,
                  icon: Icon(
                    esFavorito
                        ? Icons.favorite
                        : Icons.favorite_border,
                  ),
                  label: Text(
                    esFavorito
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
                  icon: const Icon(
                    Icons.info_outline,
                  ),
                  label: const Text(
                    'Ver información',
                  ),
                ),
              ),

              const SizedBox(height: 12),

              Consumer<CarritoProvider>(
                builder: (context, carrito, child) {
                  if (carrito.cantidadTotal == 0) {
                    return const SizedBox.shrink();
                  }

                  return SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: abrirCarrito,
                      icon: const Icon(
                        Icons.shopping_cart,
                      ),
                      label: Text(
                        'Ver carrito (${carrito.cantidadTotal})',
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}