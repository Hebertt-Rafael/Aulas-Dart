import 'dart:io';

void main() {
  stdout.write('Digite o valor do depósito (R\$): ');
  double? deposito = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Digite a taxa de juros mensal (em %): ');
  double? taxa = double.tryParse(stdin.readLineSync() ?? '');

  if (deposito != null && taxa != null) {
    double rendimento = deposito * (taxa / 100);

    double total = deposito + rendimento;

    print('\n--- Resultados ---');
    print('Valor do Depósito: R\$ ${deposito.toStringAsFixed(2)}');
    print('Valor do Rendimento: R\$ ${rendimento.toStringAsFixed(2)}');
    print('Valor Total após o rendimento: R\$ ${total.toStringAsFixed(2)}');
  } else {
    print('Erro: Por favor, insira valores numéricos válidos.');
  }
}
