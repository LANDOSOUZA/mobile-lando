//  Crie uma função que calcule o salário líquido do usuário a partir dos 
//  valores digitados pelo teclado considerando um desconto de 10% de 
//  impostos e bonificação de 20% em cima do salário.

import 'dart:io';

// Constantes
const double desc = 0.10;  // 10%
const double bonus = 0.20; // 20%

//Função que calcula salário líquido
double salarioUsuario(double salario){
  double salarioLiquido = salario - (salario * desc) + (salario * bonus);
  return salarioLiquido;
}

void main(){
  // LIMPA A TELA AO INICIAR 
  print("\x1B[2J\x1B[0;0H");

  //Entrada de dados
  stdout.write("Digite o valor do salário do Usuário R\$: ");
  double salario = double.parse(stdin.readLineSync()!);

// LIMPA A TELA ANTES DE EXIBIR O RESULTADO
  print("\x1B[2J\x1B[0;0H");

  //Chamada da função
  double resultado = salarioUsuario(salario);

  print("\n========== Salário Líquido ==========");
  print("Salário informado: R\$ ${salario.toStringAsFixed(2)}");
  print("Salário líquido:   R\$ ${resultado.toStringAsFixed(2)}.");
  print("\n");
}