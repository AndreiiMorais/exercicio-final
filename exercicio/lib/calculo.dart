import 'package:exercicio/main.dart';
import 'package:exercicio/src/cadastro.dart';

class Calculo {
  Cadastro _cadastro = Cadastro();
  double imc = 0;

  calculoImc() {
    imc = cadastro.getPeso / (cadastro.getAltura * cadastro.getAltura);
    return imc;
  }
}
