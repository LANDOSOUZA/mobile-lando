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

import 'dart:ffi';
import 'dart:io';

// Função que calcula descontos em combustíveis
String tipoCombustivel(Char etanol, Char diesel, Char gasolina) {
  int menor = c1;
  int maior = c1;

  if (c2 < menor) menor = c2;
  if (c3 < menor) menor = c3;

  if (c2 > maior) maior = c2;
  if (c3 > maior) maior = c3;

  return "Mais barato: R\$ $menor\nMais caro: R\$ $maior";
}
}

void main() {  

  // LIMPA A TELA AO INICIAR 
  print("\x1B[2J\x1B[0;0H");

  double nota1;
  double nota2;
  double resultado;

  stdout.write('Digite a nota do primeiro aluno: ');
  nota1 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite a nota do segundo aluno: ');
  nota2 = double.parse(stdin.readLineSync()!);

  // LIMPA A TELA ANTES DE EXIBIR O RESULTADO
  print("\x1B[2J\x1B[0;0H");

  resultado = media(nota1, nota2);

  print("Média: ${resultado.toStringAsFixed(2)}\n");

  if (resultado >= 7)
    print("Aprovado");
  
  else if (resultado >= 4 && resultado < 7)
    print("Exame");
  
  else
    print("Reprovado");
  
  print("\n");
}

