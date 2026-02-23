
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

  stdout.write('Digite a quantidade de kWh consumida ');
  quantKwh = int.parse(stdin.readLineSync()!);

  print("\n============== Menu ==============");
  print("1 - residencial");
  print("2 - comercial");
  print("3 - industrial");
  stdout.write("\nEscolha uma opção: ");
  op = int.parse(stdin.readLineSync()!);

  switch (op) {
    case 1:
      if (quantKwh <= 500) {
        preco = 0.50;
        valorTotal = quantKwh * preco;
      } else {
        preco = 0.70;
        valorTotal = quantKwh * preco;
      }

      print('O valor a pagar pelo consumo de energia é R\$ ${valorTotal.toStringAsFixed(2)}');
      break;

    case 2:
      if (quantKwh <= 1000) {
        preco = 0.65;
        valorTotal = quantKwh * preco;
      } else {
        preco = 0.60;
        valorTotal = quantKwh * preco;
      }

      print('O valor a pagar pelo consumo de energia é R\$ ${valorTotal.toStringAsFixed(2)}');
      break;

    case 3:
      if (quantKwh <= 5000) {
        preco = 0.55;
        valorTotal = quantKwh * preco;
      } else {
        preco = 0.50;
        valorTotal = quantKwh * preco;
      }

      print('O valor a pagar pelo consumo de energia é R\$ ${valorTotal.toStringAsFixed(2)}');
      break;

    default:
      print("Opção inválida.");
  }
}
