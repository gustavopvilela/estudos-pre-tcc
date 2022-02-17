// declaração
import 'dart:math';

void printIntro() { // função sem retorno
  print('Seja bem-vindo(a)!');
  print('Escolha a opção!');
}

void calcSum(double numA, double numB) { // função sem retorno e com parâmetros
  print(numA + numB);
}

// coloca-se o tipo do retorno, aqui, um double
double calcMult(double numA, double numB) { // função com retorno e com parâmetros
  double res = numA * numB;
  return res; // o return é obrigatório

  // ou simplesmente: return numA * numB
}

double calcCircleArea(double r) => 3.14 * pow(r, 2); // arrow function

void createButton(String text, {String? color, double? width}) { // parâmetros opcionais entre chaves
  print(text);
  print(color ?? 'Preto'); // declarando valor padrão
  print(width);
}

void createButton2(String text, Function createdFunc, {String? color, double? width}) { // função tendo uma função como parâmetro
  print(text);
  print(color ?? 'Verde');
  print(width ?? 12.09);
  createdFunc();
}

void buttonAlreadyCreated() {
  print('Botão criado!');
} // função que vai servir de parâmetro