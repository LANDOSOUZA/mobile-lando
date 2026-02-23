
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

// Função que retorna o preço por kWh conforme o tipo e a quantidade
double obterPrecoKwh(int tipo, int kwh) {
  switch (tipo) {
    case 1: // Residencial
      return kwh <= 500 ? 0.50 : 0.70;

    case 2: // Comercial
      return kwh <= 1000 ? 0.65 : 0.60;

    case 3: // Industrial
      return kwh <= 5000 ? 0.55 : 0.50;

    default:
      return 0;
  }
}

// Função que calcula o valor total
double calcularValorTotal(int kwh, double preco) {
  return kwh * preco;
}

void main() {
  stdout.write('Digite a quantidade de kWh consumida: ');
  int kwh = int.parse(stdin.readLineSync()!);

  print("\n============== Menu ==============");
  print("1 - Residencial");
  print("2 - Comercial");
  print("3 - Industrial");
  stdout.write("\nEscolha uma opção: ");
  int tipo = int.parse(stdin.readLineSync()!);

  double preco = obterPrecoKwh(tipo, kwh);

  if (preco == 0) {
    print("Opção inválida.");
    return;
  }

  double total = calcularValorTotal(kwh, preco);

  print('\nO valor a pagar pelo consumo de energia é R\$ ${total.toStringAsFixed(2)}');
}
