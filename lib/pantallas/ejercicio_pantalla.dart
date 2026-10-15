import 'package:flutter/material.dart';
import '../logica/ejercicio_logica.dart';

class EjercicioPantalla extends StatefulWidget {
  const EjercicioPantalla({super.key});

  @override
  State<EjercicioPantalla> createState() => _EjercicioPantallaState();
}

class _EjercicioPantallaState extends State<EjercicioPantalla> {


  final numeroController = TextEditingController();


  final EjercicioLogica logica = EjercicioLogica();


  String resultadoEjercicio7 = '';
  String resultadoEjercicio8 = '';
  String resultadoEjercicio9 = '';
  String mensajeError = '';

  void calcular() {
    int? numeroInput = int.tryParse(numeroController.text);

    if (numeroInput == null || numeroInput < 0) {
      setState(() {
        mensajeError = 'INGRESE UN NUMERO VALIDO (ENTERO POSITIVO)';
        resultadoEjercicio7 = '';
        resultadoEjercicio8 = '';
        resultadoEjercicio9 = '';
       
      });
      return;
    }

    setState(() {
      mensajeError = '';
      resultadoEjercicio7 = logica.ejercicio7(numeroInput);
      resultadoEjercicio8 = logica.ejercicio8(numeroInput);
      resultadoEjercicio9 = logica.ejercicio9(numeroInput);
    });
  }

  void limpiar() {
    numeroController.clear();
    setState(() {
      mensajeError = '';
      resultadoEjercicio7 = '';
      resultadoEjercicio8 = '';
      resultadoEjercicio9 = '';
    });
  }

  @override
  void dispose() {
    numeroController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EJERCICIOS CON NUMEROS'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: numeroController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'INGRESE UN NUMERO ENTERO POSITIVO',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: calcular,
                      child: const Text('CALCULAR',style: TextStyle(color: Colors.green),),
                      
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: limpiar,
                      child: const Text('LIMPIAR',style: TextStyle(color: Colors.red),),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              if (mensajeError.isNotEmpty)
                Text(
                  mensajeError,
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              if (resultadoEjercicio7.isNotEmpty) ...[
                const SizedBox(height: 12),
                Card(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.check_circle_outline, color: Colors.blue),
                          title: const Text('EJERCICIO 7'),
                          subtitle: Text(
                            resultadoEjercicio7,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(Icons.auto_mode, color: Colors.green),
                          title: const Text('EJERCICIO 8'),
                          subtitle: Text(
                            resultadoEjercicio8,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(Icons.swap_horiz, color: Colors.deepPurple),
                          title: const Text('EJERCICIO 9'),
                          subtitle: Text(
                            resultadoEjercicio9,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}