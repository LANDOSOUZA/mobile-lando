// Crie um programa que receba a nota de dois alunos, calcule sua média 
// e informe se o aluno está aprovado ou reprovado conforme a média.
// Se média for maior ou igual a 7: Aprovado.
// Maior ou igual a 4 e menor do que 7: Exame.
// Menor do que 4: Reprovado.

import 'dart:io';

// Função que calcula a média de duas notas
double media(double n1, double n2) {
  return (n1 + n2) / 2;
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

