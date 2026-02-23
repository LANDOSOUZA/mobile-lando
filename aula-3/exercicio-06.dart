// Crie um programa que receba a idade de duas pessoas e 
// print na tela qual é a pessoa mais velha.

import 'dart:io';

// Função que informa quem é a pessoa mais velha
String pessoaMaisVelha(int p1, int p2) {
  if (p1 > p2) {
    return "Pessoa 1 é mais velha";
  } else if (p2 > p1) {
    return "Pessoa 2 é mais velha";
  } else {
    return "As duas pessoas têm a mesma idade";
  }
}

void main() {

  // LIMPA A TELA AO INICIAR 
  print("\x1B[2J\x1B[0;0H");

  int pessoa1;
  int pessoa2;

  stdout.write('Digite a idade da pessoa 1: ');
  pessoa1 = int.parse(stdin.readLineSync()!);

  stdout.write('Digite a idade da pessoa 2: ');
  pessoa2 = int.parse(stdin.readLineSync()!);

  // LIMPA A TELA ANTES DE EXIBIR O RESULTADO
  print("\x1B[2J\x1B[0;0H");

  String resultado = pessoaMaisVelha(pessoa1, pessoa2);

  print(resultado);
  print("\n");
}
