import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TemaApp {
  static const Color colorPrincipal = Color(0xFF4CAF50);
  static const Color colorSecundario = Color(0xFF8BC34A);
  static const Color colorFondo = Color(0xFFF5F9F2);
  static const Color colorTexto = Color(0xFF263238);

  static ThemeData tema = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: colorFondo,

    colorScheme: ColorScheme.fromSeed(
      seedColor: colorPrincipal,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: colorPrincipal,
      foregroundColor: Colors.white,
      centerTitle: true,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),

    textTheme: GoogleFonts.poppinsTextTheme().apply(
      bodyColor: colorTexto,
      displayColor: colorTexto,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorPrincipal,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 14,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),

    cardTheme: CardThemeData(
      elevation: 3,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );
}