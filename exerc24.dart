import 'dart:io';

void main() {
  print('Digite um número de 0 a 99:');
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    int? numero = int.tryParse(entrada);

    if (numero != null && numero >= 0 && numero <= 99) {
      print('O número $numero por extenso é: ${converterPorExtenso(numero)}');
    } else {
      print('Erro: Por favor, digite um número inteiro entre 0 e 99.');
    }
  }
}

String converterPorExtenso(int n) {
  if (n == 0) return 'zero';

  const unidades = [
    '',
    'um',
    'dois',
    'três',
    'quatro',
    'cinco',
    'seis',
    'sete',
    'oito',
    'nove',
    'dez',
    'onze',
    'doze',
    'treze',
    'quatorze',
    'quinze',
    'dezesseis',
    'dezessete',
    'dezoito',
    'dezenove',
  ];

  const dezenas = [
    '',
    '',
    'vinte',
    'trinta',
    'quarenta',
    'cinquenta',
    'sessenta',
    'setenta',
    'oitenta',
    'noventa',
  ];

  if (n < 20) {
    return unidades[n];
  } else {
    int dezena = n ~/ 10;
    int unidade = n % 10;

    if (unidade == 0) {
      return dezenas[dezena];
    } else {
      return '${dezenas[dezena]} e ${unidades[unidade]}';
    }
  }
}
