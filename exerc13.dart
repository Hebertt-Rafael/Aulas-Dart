import 'dart:io';

void main() {
  stdout.write('Digite o valor em metros: ');

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    try {
      double metros = double.parse(entrada);
      double centimetros = metros * 100;

      print('$metros metros equivalem a $centimetros centímetros.');
    } catch (e) {
      print('Por favor, digite um número válido.');
    }
  }
}
