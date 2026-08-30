import 'package:flutter/material.dart';
import 'screens/inicio_screen.dart';
import 'theme/tema_app.dart';

void main() {
  runApp(const HealthyPetApp());
}

class HealthyPetApp extends StatelessWidget {
  const HealthyPetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Healthy Pet',
      theme: TemaApp.tema,
      home: const InicioScreen(),
    );
  }
}