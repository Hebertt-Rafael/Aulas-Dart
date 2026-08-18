import 'dart:io';

void main() {
  stdout.write('Digite um número inteiro: ');

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    int? numero = int.tryParse(entrada);

    if (numero != null) {
      if (numero % 5 == 0) {
        print('$numero é múltiplo de 5.');
      } else {
        print('$numero não é múltiplo de 5.');
      }
    } else {
      print('Entrada inválida. Por favor, digite um número inteiro.');
    }
  }
}
