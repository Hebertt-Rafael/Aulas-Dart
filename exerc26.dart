import 'dart:io';

void main() {
  int pares = 0;
  int impares = 0;
  int numero = 0;

  print("--- Contador de Pares e Ímpares ---");
  print("Digite números inteiros (digite um número negativo para encerrar):");

  while (true) {
    stdout.write("Digite um número: ");

    // Leitura e conversão da entrada para inteiro
    String? entrada = stdin.readLineSync();

    // Verifica se a entrada não é nula e converte
    if (entrada != null) {
      numero = int.tryParse(entrada) ?? 0;
    }

    // Condição de parada
    if (numero < 0) {
      break;
    }

    // Verifica se o número é par ou ímpar
    if (numero % 2 == 0) {
      pares++;
    } else {
      impares++;
    }
  }

  print("\n--- Resultado Final ---");
  print("Quantidade de números pares: $pares");
  print("Quantidade de números ímpares: $impares");
}
