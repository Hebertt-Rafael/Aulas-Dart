import 'dart:io';

void main() {
  stdout.write('Digite uma letra: ');
  String? entrada = stdin.readLineSync();

  if (entrada != null &&
      entrada.length == 1 &&
      entrada.contains(RegExp(r'[a-zA-Z]'))) {
    String letra = entrada.toLowerCase();

    if (letra == 'a' ||
        letra == 'e' ||
        letra == 'i' ||
        letra == 'o' ||
        letra == 'u') {
      print('A letra "$entrada" é uma vogal.');
    } else {
      print('A letra "$entrada" é uma consoante.');
    }
  } else {
    print('Por favor, digite apenas uma letra válida.');
  }
}
