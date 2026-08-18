import 'dart:io';

void main() {
  stdout.write('Digite o salário atual do funcionário: R\$ ');

  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.trim().isNotEmpty) {
    double? salarioAtual = double.tryParse(entrada.trim());

    if (salarioAtual != null) {
      double novoSalario = salarioAtual * 1.25;

      print('-----------------------------------------');
      print('Salário atual: R\$ ${salarioAtual.toStringAsFixed(2)}');
      print('Novo salário com 25% de aumento: R\$ ${novoSalario.toStringAsFixed(2)}');
      print('-----------------------------------------');
    } else {
      print('Entrada inválida.');
    }
  } else {
    print('Entrada inválida.');
  }
}