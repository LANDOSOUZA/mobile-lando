 // Crie um programa que receba 4 valores numéricos digitados pelo usuário. Em seguida, 
 // permita que o usuário escolha a operação que deseja realizar entre as seguintes 
 // opções: soma (+), subtração (-), multiplicação (*) e divisão (/)

 import 'dart:io';

void main() {
  // Entrada dos 4 valores
  stdout.write("Digite o primeiro valor: ");
  double n1 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o segundo valor: ");
  double n2 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o terceiro valor: ");
  double n3 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o quarto valor: ");
  double n4 = double.parse(stdin.readLineSync()!);

  // Menu de operações
  print("\nEscolha a operação:");
  print("1 - Soma (+)");
  print("2 - Subtração (-)");
  print("3 - Multiplicação (*)");
  print("4 - Divisão (/)");
  stdout.write("Opção: ");
  int op = int.parse(stdin.readLineSync()!);

  double resultado = 0;

  switch (op) {
    case 1:
      resultado = n1 + n2 + n3 + n4;
      break;

    case 2:
      resultado = n1 - n2 - n3 - n4;
      break;

    case 3:
      resultado = n1 * n2 * n3 * n4;
      break;

    case 4:
      if (n2 == 0 || n3 == 0 || n4 == 0) {
        print("Erro: divisão por zero não permitida.");
        return;
      }
      resultado = n1 / n2 / n3 / n4;
      break;

    default:
      print("Opção inválida.");
      return;
  }

  print("\nResultado: $resultado");
}

/*
import 'dart:io';

void main() {
  stdout.write("Digite o primeiro valor: ");
  double n1 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o segundo valor: ");
  double n2 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o terceiro valor: ");
  double n3 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o quarto valor: ");
  double n4 = double.parse(stdin.readLineSync()!);

  print("\nEscolha a operação:");
  print("1 - Soma (+)");
  print("2 - Subtração (-)");
  print("3 - Multiplicação (*)");
  print("4 - Divisão (/)");
  stdout.write("Opção: ");
  int op = int.parse(stdin.readLineSync()!);

  double resultado = 0;

  switch (op) {
    case 1:
      resultado = n1 + n2 + n3 + n4;
      break;

    case 2:
      resultado = n1 - n2 - n3 - n4;
      break;

    case 3:
      resultado = n1 * n2 * n3 * n4;
      break;

    case 4:
      // Ternário substitui o if
      resultado = (n2 == 0 || n3 == 0 || n4 == 0)
          ? double.nan
          : n1 / n2 / n3 / n4;
      break;

    default:
      print("Opção inválida.");
      return;
  }

  if (resultado.isNaN) {
    print("Erro: divisão por zero.");
  } else {
    print("\nResultado: $resultado");
  }
}
*/

/*
import 'dart:io';

// Função para ler um número
double lerNumero(String mensagem) {
  stdout.write(mensagem);
  return double.parse(stdin.readLineSync()!);
}

// Função que realiza a operação
double calcular(int op, double a, double b, double c, double d) {
  switch (op) {
    case 1:
      return a + b + c + d;

    case 2:
      return a - b - c - d;

    case 3:
      return a * b * c * d;

    case 4:
      if (b == 0 || c == 0 || d == 0) {
        print("Erro: divisão por zero.");
        return double.nan;
      }
      return a / b / c / d;

    default:
      print("Opção inválida.");
      return double.nan;
  }
}

void main() {
  double n1 = lerNumero("Digite o primeiro valor: ");
  double n2 = lerNumero("Digite o segundo valor: ");
  double n3 = lerNumero("Digite o terceiro valor: ");
  double n4 = lerNumero("Digite o quarto valor: ");

  print("\nEscolha a operação:");
  print("1 - Soma (+)");
  print("2 - Subtração (-)");
  print("3 - Multiplicação (*)");
  print("4 - Divisão (/)");
  stdout.write("Opção: ");
  int op = int.parse(stdin.readLineSync()!);

  double resultado = calcular(op, n1, n2, n3, n4);

  if (!resultado.isNaN) {
    print("\nResultado: $resultado");
  }
}
*/