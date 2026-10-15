import 'package:flutter/material.dart';

import '../pantallas/ejercicio_pantalla.dart';

class BienvenidaPantalla extends StatelessWidget {
  const BienvenidaPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APP PRUEBA LUCAS GONGORA'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
  
              const Text(
                'BIENVENIDO',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Icon(
                Icons.calculate_outlined,
                size: 90,
                color: Colors.green,
              ),
              const SizedBox(height: 20),
              const Text(
                'REALIZAR EJERCICIOS 7, 8 Y 9',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              const SizedBox(height: 35),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.arrow_forward,color: Colors.green),
                  label: const Text('IR A LOS EJERCICIOS',style: TextStyle(color: Colors.green),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EjercicioPantalla(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}