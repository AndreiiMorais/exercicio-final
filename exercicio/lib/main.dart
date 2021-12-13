import 'dart:io';

import 'package:exercicio/src/cadastro.dart';

Cadastro cadastro = Cadastro();
String? inputstr;
String? comando;
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
    cadastro.getAltura = inputstr.toString() as double;
  } else {
    print("Erro na Altura!");
  }
  print("INFORME SEU PESO: ");
  inputstr = stdin.readLineSync();
  if (inputstr != null) {
    cadastro.getPeso = inputstr.toString() as double;
  } else {
    print("Erro no peso!");
  }

  print(
      "QUAL O COMANDO: \n 1 - Imprimir \n 2 - Mudar cadastro \n 3 - calcular IMC");
  comando = stdin.readLineSync();
  if (comando == "1") {
    print(cadastro);
  }
}
