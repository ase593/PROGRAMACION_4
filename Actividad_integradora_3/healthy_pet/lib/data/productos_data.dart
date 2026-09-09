import '../models/producto.dart';

final List<Producto> productos = [
  Producto(
    nombre: 'Snack Natural',
    descripcion:
        'Premio saludable elaborado con ingredientes naturales.',
    precio: 5.99,
    imagen: 'assets/images/snack_natural.png',
    categoria: 'Snacks',
    peso: '150 g',
    stock: 25,
  ),
  Producto(
    nombre: 'Galletas de Avena',
    descripcion:
        'Deliciosas galletas de avena para consentir a tu mascota.',
    precio: 4.50,
    imagen: 'assets/images/galletas.png',
    categoria: 'Galletas',
    peso: '200 g',
    stock: 18,
  ),
  Producto(
    nombre: 'Premios de Pollo',
    descripcion:
        'Pequeños premios de pollo ideales para entrenamiento.',
    precio: 3.99,
    imagen: 'assets/images/premios.png',
    categoria: 'Premios',
    peso: '100 g',
    stock: 30,
  ),
  Producto(
    nombre: 'Mix Saludable',
    descripcion:
        'Combinación de snacks naturales para una alimentación equilibrada.',
    precio: 6.50,
    imagen: 'assets/images/mix_saludable.png',
    categoria: 'Mix',
    peso: '250 g',
    stock: 12,
  ),
];