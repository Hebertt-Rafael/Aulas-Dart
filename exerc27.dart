import 'dart:io';

void main() {
  print("Digite o número de termos (n) que deseja gerar:");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    int n = int.parse(entrada);
    gerarFibonacci(n);
  }
}

void gerarFibonacci(int n) {
  int primeiro = 1;
  int segundo = 1;

  if (n <= 0) {
    print("Por favor, insira um número maior que zero.");
    return;
  }

  print("Série de Fibonacci até o $nº termo:");

  for (int i = 1; i <= n; i++) {
    stdout.write("$primeiro ");

    int proximo = primeiro + segundo;
    primeiro = segundo;
    segundo = proximo;
  }
  print("");
}
