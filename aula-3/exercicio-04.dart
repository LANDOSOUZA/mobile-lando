// Crie um programa que converta valores de reais (R$) para outras 
// moedas de acordo com a escolha do usuário: euro (EUR), dólar (USD), 
// franco suíço (CHF). Considere os seguintes valores:

// Euro 7,00
// Dólar 6,56
// Franco Suiço 4,35

import 'dart:io';

// Função que converte valores de Real para outra moeda
double converteValor(double valor, double taxa) {
  return valor / taxa;
}

void main() {
  double valor;
  double valorConvertido;
  int op;

  // LIMPA A TELA AO INICIAR 
  print("\x1B[2J\x1B[0;0H");

  print("============== Conversor de Moedas ==============\n");

  stdout.write('Digite o valor em Reais (R\$): ');
  valor = double.parse(stdin.readLineSync()!);

  print("\n============== Menu ==============");
  print("1 - Euro (EUR)");
  print("2 - Dólar (USD)");
  print("3 - Franco Suíço (CHF)");
  stdout.write("\nEscolha uma opção: ");
  op = int.parse(stdin.readLineSync()!);

  // LIMPA A TELA ANTES DE EXIBIR O RESULTADO
  print("\x1B[2J\x1B[0;0H");

  print("============== Resultado ==============\n");
  print("Valor digitado: R\$ ${valor.toStringAsFixed(2)}\n");

  switch (op) {
    case 1:
      valorConvertido = converteValor(valor, 7.00);
      print('Convertido para Euro: € ${valorConvertido.toStringAsFixed(2)}');
      break;

    case 2:
      valorConvertido = converteValor(valor, 6.56);
      print('Convertido para Dólar: \$ ${valorConvertido.toStringAsFixed(2)}');
      break;

    case 3:
      valorConvertido = converteValor(valor, 4.35);
      print('Convertido para Franco Suíço: CHF ${valorConvertido.toStringAsFixed(2)}');
      break;

    default:
      print("Opção inválida.");
  }

  print("\n");
}
