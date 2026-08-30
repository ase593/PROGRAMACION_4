import 'package:flutter/material.dart';

class NosotrosScreen extends StatelessWidget {
  const NosotrosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre Healthy Pet'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 55,
              child: Icon(
                Icons.pets,
                size: 60,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Healthy Pet',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Amor en cada bocado',
              style: TextStyle(
                fontSize: 18,
              ),
            ),

            const Divider(height: 40),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nuestra misión',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      'Ofrecer snacks y productos saludables '
                      'elaborados con ingredientes de calidad '
                      'para contribuir al bienestar de nuestras mascotas.',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nuestra visión',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      'Convertirnos en una alternativa reconocida '
                      'por ofrecer productos saludables y naturales '
                      'para perros y gatos.',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}