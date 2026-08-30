import 'package:flutter/material.dart';

import 'inicio_screen.dart';
import 'productos_screen.dart';
import 'favoritos_screen.dart';
import 'nosotros_screen.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  int indiceSeleccionado = 0;

  final List<Widget> pantallas = const [
    InicioScreen(),
    ProductosScreen(),
    FavoritosScreen(),
    NosotrosScreen(),
  ];

  void cambiarPantalla(int indice) {
    setState(() {
      indiceSeleccionado = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: indiceSeleccionado,
        children: pantallas,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: indiceSeleccionado,
        onDestinationSelected: cambiarPantalla,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_bag_outlined),
            selectedIcon: Icon(Icons.shopping_bag),
            label: 'Productos',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_border),
            selectedIcon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          NavigationDestination(
            icon: Icon(Icons.info_outline),
            selectedIcon: Icon(Icons.info),
            label: 'Nosotros',
          ),
        ],
      ),
    );
  }
}