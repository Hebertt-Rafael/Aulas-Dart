import 'dart:io';

void main() {
  stdout.write('Digite o primeiro número: ');
  double? num1 = double.tryParse(stdin.readLineSync()!);

  stdout.write('Digite o segundo número: ');
  double? num2 = double.tryParse(stdin.readLineSync()!);

  print('\nEscolha a operação:');
  print('1 - Soma');
  print('2 - Subtração');
  stdout.write('Opção: ');
  String? opcao = stdin.readLineSync();

  if (num1 != null && num2 != null) {
    if (opcao == '1') {
      double resultado = num1 + num2;
      print('\nResultado da Soma: $resultado');
    } else if (opcao == '2') {
      double resultado = num1 - num2;
      print('\nResultado da Subtração: $resultado');
    } else {
      print('\nOpção inválida!');
    }
  } else {
    print('\nErro: Por favor, digite números válidos.');
  }
}
