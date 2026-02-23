//  Crie uma função que receba as informações de um usuário digitadas 
//  pelo teclado: Nome, Curso, Idade.

import 'dart:io';

//Função que recebe e exibe os dados
void exibirUsuario(String nome, String curso, int idade){
  print("\n===== Dados do Usuário =====");
  print("\tNome: $nome");
  print("\tCurso: $curso");
  print("\tIdade: $idade anos");
}

void main(){
  // LIMPA A TELA AO INICIAR 
  print("\x1B[2J\x1B[0;0H");

  //Entrada de dados
  stdout.write("Digite seu nome: ");
  String nome = stdin.readLineSync()!;

  stdout.write("Digite o nome do curso: ");
  String curso = stdin.readLineSync()!;

  stdout.write("Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

// LIMPA A TELA ANTES DE EXIBIR O RESULTADO
  print("\x1B[2J\x1B[0;0H");

  //Chamada da função
  exibirUsuario(nome, curso, idade);
}


