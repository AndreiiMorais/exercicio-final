import 'dart:io';

import 'package:exercicio/calculo.dart';
import 'package:exercicio/src/cadastro.dart';

Cadastro cadastro = Cadastro();
Calculo calculo = Calculo();
String? inputstr;
String? comando;
bool condicao = true;
void main(List<String> arguments) {
  print("INFORME SEU NOME: ");
  inputstr = stdin.readLineSync();
  if (inputstr != null) {
    cadastro.getNome = inputstr.toString();
  } else {
    print("Erro");
  }
  print("INFORME SUA IDADE: ");
  inputstr = stdin.readLineSync();
  if (inputstr != null) {
    cadastro.getIdade = int.parse(inputstr.toString());
  } else {
    print("Erro na idade");
  }

  print("INFORME SUA ALTURA: ");
  inputstr = stdin.readLineSync();
  if (inputstr != null) {
    cadastro.getAltura = double.parse(inputstr!);
  } else {
    print("Erro na Altura!");
  }
  print("INFORME SEU PESO: ");
  inputstr = stdin.readLineSync();
  if (inputstr != null) {
    cadastro.getPeso = double.parse(inputstr!);
  } else {
    print("Erro no peso!");
  }

  while (condicao) {
    print("QUAL O COMANDO: \n 1 - Imprimir \n 2 - calcular IMC \n 3 - Sair");
    comando = stdin.readLineSync();
    if (comando == "1") {
      print("nome: ${cadastro.getNome}");
      print("Idade: ${cadastro.getIdade}");
      print("Altura: ${cadastro.getAltura}");
      print("Peso: ${cadastro.getPeso}");
    } else if (comando == "2") {
      print("Seu IMC é: ${calculo.calculoImc()}");
    } else if (comando == "3") {
      print("PROGRAMA ENCERRADO");
      condicao = false;
    }
  }
}
