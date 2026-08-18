import 'dart:io';

void main() {
  stdout.write('Digite o primeiro número: ');
  double? num1 = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Digite o segundo número: ');
  double? num2 = double.tryParse(stdin.readLineSync() ?? '');

  print('Escolha a operação: (1) Soma ou (2) Subtração');
  String? operacao = stdin.readLineSync();

  if (num1 != null && num2 != null) {
    if (operacao == '1') {
      double resultado = num1 + num2;
      print('Resultado: $num1 + $num2 = $resultado');
    } else if (operacao == '2') {
      double resultado = num1 - num2;
      print('Resultado: $num1 - $num2 = $resultado');
    } else {
      print('Operação inválida!');
    }
  } else {
    print('Erro: Por favor, insira números válidos.');
  }
}
