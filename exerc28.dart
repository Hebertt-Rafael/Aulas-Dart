import 'dart:io';

void main() {
  stdout.write('Digite um número inteiro para calcular o fatorial: ');

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    int numero = int.tryParse(entrada) ?? -1;

    if (numero < 0) {
      print('Por favor, digite um número inteiro não negativo.');
    } else {
      int fatorial = 1;
      String sequencia = '';

      for (int i = numero; i >= 1; i--) {
        fatorial *= i;

        sequencia += i.toString();
        if (i > 1) {
          sequencia += '.';
        }
      }

      if (numero == 0) {
        print('0! = 1');
      } else {
        print('$numero! = $sequencia = $fatorial');
      }
    }
  }
}
