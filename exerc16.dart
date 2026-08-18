import 'dart:io';

void main() {
  stdout.write('Digite o salário do funcionário: R\$ ');
  double salario = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o percentual de aumento (%): ');
  double percentual = double.parse(stdin.readLineSync()!);

  double valorAumento = salario * (percentual / 100);
  double novoSalario = salario + valorAumento;

  print('\n--- Resultado ---');
  print('Salário atual: R\$ ${salario.toStringAsFixed(2)}');
  print('Valor do aumento: R\$ ${valorAumento.toStringAsFixed(2)}');
  print('Novo salário: R\$ ${novoSalario.toStringAsFixed(2)}');
}
