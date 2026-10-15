class EjercicioLogica {


  // Ejercicio 7: Divisores de un número
  String ejercicio7(int numero) {
    if (numero <= 0) return 'Ingrese un número entero positivo';

    List<int> divisores = [];

    for (int i = 1; i <= numero; i++) {
      if (numero % i == 0) {
        divisores.add(i);
      }
    }

    return 'Divisores de $numero: ${divisores.join(', ')}\n'
        'Cantidad de divisores: ${divisores.length}';
  }

  // Ejercicio 8: Inversión de un número
  String ejercicio8(int numero) {
  if (numero <= 0) return 'Ingrese un número entero positivo';

  if (numero <= 10) {
    return 'El número $numero invertido es: $numero';
  }

  String invertidoStr = numero.toString().split('').reversed.join();

  return 'El número $numero invertido es: $invertidoStr';
}

  // Ejercicio 9: Suma de dígitos
  String ejercicio9(int numero) {
  if (numero <= 0) return 'Ingrese un número entero positivo';

  List<String> digitos = numero.toString().split('');
  int suma = 0;

  for (String digito in digitos) {
    suma += int.parse(digito);
  }

  String tipo = suma % 2 == 0 ? 'par' : 'impar';
  return 'La suma de los dígitos de $numero es $suma, que es $tipo';
}
}