import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/favoritos_provider.dart';
import 'screens/principal_screen.dart';
import 'theme/tema_app.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => FavoritosProvider(),
      child: const HealthyPetApp(),
    ),
  );
}

class HealthyPetApp extends StatelessWidget {
  const HealthyPetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Healthy Pet',
      theme: TemaApp.tema,
      home: const PrincipalScreen(),
    );
  }
}