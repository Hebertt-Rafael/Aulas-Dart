import 'dart:io';

void main() {
  stdout.write('Digite o salário-base do funcionário: R\$');
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    double salarioBase = double.parse(entrada);

    double gratificacao = salarioBase * 0.05;
    double imposto = salarioBase * 0.07;
    double salarioReceber = salarioBase + gratificacao - imposto;

    print('\n--- Resumo do Salário ---');
    print('Salário Base: R\$ ${salarioBase.toStringAsFixed(2)}');
    print('Gratificação (5%): R\$ ${gratificacao.toStringAsFixed(2)}');
    print('Imposto (7%): R\$ ${imposto.toStringAsFixed(2)}');
    print('-------------------------');
    print('Salário a Receber: R\$ ${salarioReceber.toStringAsFixed(2)}');
  } else {
    print('Entrada inválida.');
  }
}
