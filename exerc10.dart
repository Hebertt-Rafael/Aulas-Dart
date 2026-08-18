import 'dart:io';

void main() {
  print("Digite o primeiro lado do triângulo (ex:10):");
  double a = double.parse(stdin.readLineSync()!);

  print("Digite o segundo lado do triângulo (ex:20):");
  double b = double.parse(stdin.readLineSync()!);

  print("Digite o terceiro lado do triângulo (ex:30):");
  double c = double.parse(stdin.readLineSync()!);

  if ((a + b > c) && (a + c > b) && (b + c > a)) {
    print("\nOs valores formam um triângulo.");

    if (a == b && b == c) {
      print("Tipo: Triângulo Equilátero (três lados iguais).");
    } else if (a == b || a == c || b == c) {
      print("Tipo: Triângulo Isósceles (dois lados iguais).");
    } else {
      print("Tipo: Triângulo Escaleno (três lados diferentes).");
    }
  } else {
    print("\nOs valores informados NÃO formam um triângulo.");
  }
}
