// Crie um programa que receba o valor médio de três modelos de carro 
// e indique qual é mais caro e o mais barato.

import 'dart:io';

// Função que informa quem é a pessoa mais velha
String analisarCarros(int c1, int c2, int c3) {
  int menor = c1;
  int maior = c1;

  if (c2 < menor) menor = c2;
  if (c3 < menor) menor = c3;

  if (c2 > maior) maior = c2;
  if (c3 > maior) maior = c3;

  return "Mais barato: R\$ $menor\nMais caro: R\$ $maior";
}

void main() {

  // LIMPA A TELA AO INICIAR 
  print("\x1B[2J\x1B[0;0H");

  int carro1;
  int carro2;
  int carro3;

  stdout.write('Digite o valor do primeiro carro: ');
  carro1 = int.parse(stdin.readLineSync()!);

  stdout.write('Digite o valor do segundo carro: ');
  carro2 = int.parse(stdin.readLineSync()!);

  stdout.write('Digite o valor do terceiro carro: ');
  carro3 = int.parse(stdin.readLineSync()!);

  // LIMPA A TELA ANTES DE EXIBIR O RESULTADO
  print("\x1B[2J\x1B[0;0H");

  String resultado = analisarCarros(carro1, carro2, carro3);

  print(resultado);
  print("\n");
}
