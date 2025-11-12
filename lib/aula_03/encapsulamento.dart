import 'package:aulas_dart/aula_03/poo.dart';

void main() {
  Carro carro = Carro("Azul", "Fiat", 100);
  carro.ligar();
  carro.acelerar();
  carro.frear();
  carro.mostrarCor();
  carro.alterarCor("verde");
  carro.mostrarCor();
  print(carro.cor);
  carro.mostrarCor();
}
