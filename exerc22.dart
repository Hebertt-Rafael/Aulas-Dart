import 'dart:io';
import 'dart:math';

void main() {
  print("--- Calculadora de Equação do 2º Grau (Bhaskara) ---");

  stdout.write("Informe o valor de 'a': ");
  double? a = double.tryParse(stdin.readLineSync()!);

  if (a == null || a == 0) {
    print(
      "Erro: O valor de 'a' não pode ser 0 para uma equação do 2º grau. Programa encerrado.",
    );
    return;
  }

  stdout.write("Informe o valor de 'b': ");
  double? b = double.tryParse(stdin.readLineSync() ?? "0");
  b ??= 0;

  stdout.write("Informe o valor de 'c': ");
  double? c = double.tryParse(stdin.readLineSync() ?? "0");
  c ??= 0;

  if (b != 0 && c != 0) {
    print("\nClassificação: Equação completa.");
  } else {
    print("\nClassificação: Equação incompleta.");
  }

  double delta = (pow(b, 2)) - (4 * a * c);
  print("Delta: $delta");

  if (delta < 0) {
    print("A equação não possui raízes reais (Delta negativo).");
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print("A equação possui apenas uma raiz real: x = $x");
  } else {
    double raizDelta = sqrt(delta);
    double x1 = (-b + raizDelta) / (2 * a);
    double x2 = (-b - raizDelta) / (2 * a);
    print("A equação possui duas raízes reais:");
    print("x1 = $x1");
    print("x2 = $x2");
  }
}
