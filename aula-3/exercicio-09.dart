
//  Escreva um programa que calcule o preço a pagar pelo fornecimento de energia elétrica.
//    ● Pergunte para o usuário a quantidade de kWh consumida e o tipo de instalação: Residência (R), 
//      (I), Comércio (C). 
//    ● Calcule o preço da energia com base na tabela a seguir.
//    ● O preço a pagar pelo fornecimento da energia elétrica deve ser calculado preço unitário do 
//      KWh * quantidade de KWh inserido pelo usuário


//                   Tipo                    Faixa(KWh)        Preço (R$)
//                   Residencial             Até 500           0.50
//                                           Acima de 500      0.70

//                   Comercial               Até 1000          0.65
//                                           Acima de 1000     0.60

//                   Industrial              Até 5000          0.55
//                                           Acima de 5000     0.50

import 'dart:io';

void main() {
  int quantKwh;
  int op;
  double preco = 0;
  double valorTotal = 0;

  stdout.write('Digite a quantidade de kWh consumida: ');
  quantKwh = int.parse(stdin.readLineSync()!);

  print("\n============== Menu ==============");
  print("1 - Residencial");
  print("2 - Comercial");
  print("3 - Industrial");
  stdout.write("\nEscolha uma opção: ");
  op = int.parse(stdin.readLineSync()!);

  switch (op) {
    case 1:
      preco = quantKwh <= 500 ? 0.50 : 0.70;
      break;

    case 2:
      preco = quantKwh <= 1000 ? 0.65 : 0.60;
      break;

    case 3:
      preco = quantKwh <= 5000 ? 0.55 : 0.50;
      break;

    default:
      print("Opção inválida.");
      return;
  }

  valorTotal = quantKwh * preco;

  print('O valor a pagar pelo consumo de energia é R\$ ${valorTotal.toStringAsFixed(2)}');
}
