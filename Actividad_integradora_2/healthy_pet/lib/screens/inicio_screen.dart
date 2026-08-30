import 'package:flutter/material.dart';
import 'productos_screen.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Healthy Pet'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 30),

              Image.asset(
                'assets/images/logo_healthy_pet.png',
                height: 180,
              ),

              const SizedBox(height: 20),

              const Text(
                'Amor en cada bocado',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Cuidamos la alimentación de nuestros compañeros '
                'con productos saludables y deliciosos.',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ProductosScreen(),
                                    ),
                                  );
                                },
                  icon: const Icon(Icons.pets),
                  label: const Text('Ver nuestros productos'),
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.info_outline),
                  label: const Text('Conócenos'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}