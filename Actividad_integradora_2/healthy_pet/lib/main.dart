import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const HealthyPetApp());
}

class HealthyPetApp extends StatelessWidget {
  const HealthyPetApp({super.key});

  @override
  Widget build(BuildContext context) {
    const verde = Color(0xFF7A9E32);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Healthy Pet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: verde,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      home: const InicioPage(),
    );
  }
}

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  bool mostrarInformacion = false;

  void cambiarInformacion() {
    setState(() {
      mostrarInformacion = !mostrarInformacion;
    });
  }

  Widget tarjetaProducto({
    required IconData icono,
    required String titulo,
    required String descripcion,
    required Color color,
  }) {
    return Card(
      elevation: 2,
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(
                icono,
                color: color,
                size: 28,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF4A2C1A),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    descripcion,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: Colors.black38,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const verde = Color(0xFF7A9E32);
    const marron = Color(0xFF6B351A);
    const naranja = Color(0xFFF58220);

    return Scaffold(
      backgroundColor: const Color(0xFFF9FAF5),
      appBar: AppBar(
        backgroundColor: verde,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.pets),
            const SizedBox(width: 8),
            Text(
              'Healthy Pet',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo_healthy_pet.png',
                width: 230,
                height: 190,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 8),

            Center(
              child: Text(
                'Amor en cada bocado',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: naranja,
                ),
              ),
            ),

            const SizedBox(height: 22),

            Card(
              elevation: 2,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: verde,
                      size: 32,
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Text(
                        'Healthy Pet ofrece snacks y postres saludables '
                        'para perros y gatos, elaborados con ingredientes '
                        'naturales y de calidad.',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          height: 1.5,
                          color: marron,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            Text(
              'Nuestros productos',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: marron,
              ),
            ),

            const SizedBox(height: 12),

            tarjetaProducto(
              icono: Icons.pets,
              titulo: 'Snacks naturales',
              descripcion:
                  'Opciones nutritivas elaboradas especialmente para mascotas.',
              color: verde,
            ),

            tarjetaProducto(
              icono: Icons.cake,
              titulo: 'Postres saludables',
              descripcion:
                  'Alternativas especiales para consentir a perros y gatos.',
              color: naranja,
            ),

            tarjetaProducto(
              icono: Icons.restaurant,
              titulo: 'Ingredientes de calidad',
              descripcion:
                  'Productos pensados para complementar una alimentación responsable.',
              color: marron,
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: cambiarInformacion,
                icon: Icon(
                  mostrarInformacion
                      ? Icons.visibility_off
                      : Icons.info_outline,
                ),
                label: Text(
                  mostrarInformacion
                      ? 'Ocultar información'
                      : 'Conocer Healthy Pet',
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: verde,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            if (mostrarInformacion) ...[
              const SizedBox(height: 18),

              Card(
                elevation: 2,
                color: const Color(0xFFF0F5E5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.flag,
                            color: verde,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Misión',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: marron,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      Text(
                        'Elaborar y ofrecer snacks y postres saludables '
                        'para perros y gatos utilizando ingredientes '
                        'naturales y de calidad, promoviendo una '
                        'alimentación más consciente y responsable.',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          height: 1.5,
                        ),
                      ),

                      const SizedBox(height: 16),
                      const Divider(),
                      const SizedBox(height: 12),

                      Row(
                        children: [
                          const Icon(
                            Icons.visibility,
                            color: naranja,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Visión',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: marron,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      Text(
                        'Convertirse en un emprendimiento reconocido '
                        'por ofrecer productos saludables y naturales '
                        'para mascotas, destacándose por la calidad, '
                        'innovación y dedicación.',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],

            const SizedBox(height: 24),

            Center(
              child: Text(
                'Healthy Pet • Bienestar para tus mascotas 🐾',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.black45,
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}