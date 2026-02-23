//  Crie uma função que calcule a área de um triângulo a partir de dados 
//  digitados pelo usuário. A = (b* h)/2 e retorne esse valor.

import 'dart:io';

//Função que calcula a área de um triângulo
double areaTriangulo(double base, double altura){
  double area = (base * altura) / 2;
  return area;
}

void main(){
  // LIMPA A TELA AO INICIAR 
  print("\x1B[2J\x1B[0;0H");

  //Entrada de dados
  stdout.write("Digite o tamanho da base do triângulo: ");
  double base = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o tamanho da altura do triângulo: ");
  double altura = double.parse(stdin.readLineSync()!);

// LIMPA A TELA ANTES DE EXIBIR O RESULTADO
  print("\x1B[2J\x1B[0;0H");

  //Chamada da função
  double resultado = areaTriangulo(base, altura);

  print("\n========== Área do Triângulo ==========");
  print("Base: ${base.toStringAsFixed(2)} unidades²");
  print("Altura: ${altura.toStringAsFixed(2)} unidades²");
  print("A área do triângulo é: ${resultado.toStringAsFixed(2)} unidades².");
  print("\n");
}