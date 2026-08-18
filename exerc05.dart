import 'dart:io';

void main() {
  print('Digite a sua idade:');

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    int? idade = int.tryParse(entrada);

    if (idade != null) {
      if (idade >= 18) {
        print('Você é maior de idade.');
      } else {
        print('Você é menor de idade.');
      }
    } else {
      print('Entrada inválida. Por favor, digite um número inteiro.');
    }
  }
}
