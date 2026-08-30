import 'package:flutter/material.dart';

class NosotrosScreen extends StatelessWidget {
  const NosotrosScreen({super.key});

  void mostrarContacto(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Row(
            children: [
              Icon(Icons.pets),
              SizedBox(width: 10),
              Text('Healthy Pet'),
            ],
          ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contáctanos',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Text('📧 correo@healthypet.com'),
              SizedBox(height: 8),
              Text('📱 +593 999 999 999'),
              SizedBox(height: 8),
              Text('📍 Ecuador'),
            ],
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

            const SizedBox(height: 18),

            const Text(
              'Healthy Pet',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              'Amor en cada bocado',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),

            const Divider(height: 40),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nuestra misión',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Ofrecer snacks y productos saludables '
                      'elaborados con ingredientes de calidad '
                      'para contribuir al bienestar de nuestras mascotas.',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nuestra visión',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Convertirnos en una alternativa reconocida '
                      'por ofrecer productos saludables y naturales '
                      'para perros y gatos.',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nuestros valores',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            const Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.eco),
                    title: Text('Ingredientes naturales'),
                    subtitle: Text(
                      'Seleccionamos ingredientes pensando en el bienestar.',
                    ),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text('Bienestar'),
                    subtitle: Text(
                      'Buscamos contribuir a una alimentación responsable.',
                    ),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Calidad'),
                    subtitle: Text(
                      'Nos enfocamos en ofrecer productos de calidad.',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  mostrarContacto(context);
                },
                icon: const Icon(Icons.contact_mail),
                label: const Text('Contáctanos'),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}