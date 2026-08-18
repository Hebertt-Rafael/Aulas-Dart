import 'dart:io';

void main() {
  print("--- Calculadora em Dart ---");

  stdout.write("Digite o primeiro número: ");
  double? num1 = double.tryParse(stdin.readLineSync()!);

  stdout.write("Digite o segundo número: ");
  double? num2 = double.tryParse(stdin.readLineSync()!);

  print("Escolha a operação: (+, -, *, /)");
  String? operacao = stdin.readLineSync();

  if (num1 == null || num2 == null) {
    print("Erro: Por favor, insira números válidos.");
    return;
  }

  switch (operacao) {
    case '+':
      print("Resultado: ${num1 + num2}");
      break;
    case '-':
      print("Resultado: ${num1 - num2}");
      break;
    case '*':
      print("Resultado: ${num1 * num2}");
      break;
    case '/':
      if (num2 != 0) {
        print("Resultado: ${num1 / num2}");
      } else {
        print("Erro: Divisão por zero não permitida.");
      }
      break;
    default:
      print("Operação inválida!");
  }
}
