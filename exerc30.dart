import 'dart:io';

void main() {
  print("Digite uma palavra ou frase para verificar se é um palíndromo:");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (ePalindromo(entrada)) {
      print("\nResultado: '$entrada' É UM PALÍNDROMO.");
    } else {
      print("\nResultado: '$entrada' NÃO É UM PALÍNDROMO.");
    }
  }
}

bool ePalindromo(String texto) {
  String limpa = texto.toLowerCase().replaceAll(
    RegExp(r'[^a-zA-Z0-9áàâãéèêíïóôõöúçñÁÀÂÃÉÈÊÍÏÓÔÕÖÚÇÑ]'),
    '',
  );

  String invertida = limpa.split('').reversed.join('');

  return limpa == invertida;
}
