import 'package:flutter/material.dart';
import 'pantallas/bienvenida_pantalla.dart';
import 'pantallas/ejercicio_pantalla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicación Móvil - Examen',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),


      // Ruta inicial

      initialRoute: '/',

      // Mapa de rutas de navegación

      routes: {
        '/': (context) => const BienvenidaPantalla(),
        '/ejercicios': (context) => const EjercicioPantalla(),
      },
    );
  }
}