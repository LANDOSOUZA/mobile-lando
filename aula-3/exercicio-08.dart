// Um posto de combustíveis oferece descontos variados com base no tipo de 
// combustível adquirido e na quantidade comprada. O desconto é aplicado 
// diretamente no valor total, e as condições específicas para cada tipo de 
// combustível devem ser consideradas.

// Escreva um programa que:
// 1. Solicite ao usuário:
//    ● A quantidade de litros comprada.
//    ● O tipo de combustível, sendo:
//      ■ E para etanol,
//      ■ D para diesel,
//      ■ G para gasolina.

// 2. Calcule:
//    ● O valor do desconto utilizando a fórmula: desconto = preço do 
//      litro × quantidade de litros × percentual de desconto.
//    ● O valor total a ser pago utilizando a fórmula: valor total = 
//      (preço do litro × quantidade de litros) - desconto.

// 3. Exiba o valor a ser pago pelo cliente.
//    Observações:
//    ● O programa deve tratar corretamente os diferentes tipos de combustíveis.
//    ● A fórmula do desconto depende do preço do litro e do percentual aplicável 
//      para cada combustível:

//                 Tabela 3.1: Valor dos combustíveis e desconto
//                   Tipo de Combustível     Valor     desconto
//                   Etanol                  R$ 1.70   Compra >= 15L
//                                                     Desconto de 4% por litro
//
//                                                     Compra < 15L
//                                                     Desconto de 3% por litro

//                   Diesel                  R$ 2.00   Compra >= 15L
//                                                     Desconto de 5% por litro
//
//                                                     Compra < 15L
//                                                     Desconto de 3% por litro

//                   Gasolina               R$ 4.50    Compra >= 20L
//                                                     Desconto de 3% por litro
//
//                                                     Compra < 20L
//                                                     sem desconto

import 'dart:io';

// Função que retorna o preço por litro de acordo com o tipo
double obterPreco(int tipo) {
  switch (tipo) {
    case 1:
      return 1.70; // Etanol
    case 2:
      return 2.00; // Diesel
    case 3:
      return 4.50; // Gasolina
    default:
      return 0;
  }
}

// Função que calcula o desconto
double calcularDesconto(int tipo, int litros, double preco) {
  switch (tipo) {
    case 1: // Etanol
      return litros >= 15
          ? preco * litros * 0.04
          : preco * litros * 0.03;

    case 2: // Diesel
      return litros >= 15
          ? preco * litros * 0.05
          : preco * litros * 0.03;

    case 3: // Gasolina
      return litros >= 20
          ? preco * litros * 0.03
          : 0;

    default:
      return 0;
  }
}

// Função que calcula o valor total
double calcularValorTotal(double preco, int litros, double desconto) {
  return (preco * litros) - desconto;
}

void main() {
  stdout.write('Digite a quantidade de combustível em litros: ');
  int litros = int.parse(stdin.readLineSync()!);

  print("\n============== Menu ==============");
  print("1 - Etanol");
  print("2 - Diesel");
  print("3 - Gasolina");
  stdout.write("\nEscolha uma opção: ");
  int tipo = int.parse(stdin.readLineSync()!);

  double preco = obterPreco(tipo);

  if (preco == 0) {
    print("Opção inválida.");
    return;
  }

  double desconto = calcularDesconto(tipo, litros, preco);
  double total = calcularValorTotal(preco, litros, desconto);

  print('\nO valor a pagar pelo combustível é R\$ ${total.toStringAsFixed(2)}');
}
