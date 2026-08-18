import 'dart:io';

void main() {
  int pares = 0;
  int impares = 0;

  print('--- Contador de Pares e Ímpares ---');
  print('Digite números inteiros (digite um número negativo para sair):');

  while (true) {
    stdout.write('Digite um número: ');
    String? entrada = stdin.readLineSync();

    int? numero = entrada != null ? int.tryParse(entrada) : null;

    if (numero != null) {
      if (numero < 0) {
        break;
      }

      if (numero % 2 == 0) {
        pares++;
      } else {
        impares++;
      }
    } else {
      print('Entrada inválida! Por favor, digite um número inteiro.');
    }
  }

  print('\n--- Resultado ---');
  print('Quantidade de números pares: $pares');
  print('Quantidade de números ímpares: $impares');
  print('Programa encerrado.');
}
