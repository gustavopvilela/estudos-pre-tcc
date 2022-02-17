/*
  funções: partes de código que realizam determinada ação
*/

import './lib/functionsLib.dart';

void main() {
  printIntro(); // chamando a função

  calcSum(10.0, 13.2);

  double result = calcMult(11.76, 16.09); // colocando o retorno em uma variável
  print(result);

  print(calcCircleArea(3.05)); // printando o retorno direto

  createButton('Sair', width: 20.05); // declarando os parâmetros opcionais

  createButton2('Entrar', buttonAlreadyCreated); // chamando função com função como parâmetro, perceba que não há parênteses

  createButton2('Camera', () {
    print('Botão criado por função anônima'); // função anônima, ela não tem nome e serve de parâmetro quando não se quer ou não é necessário criar uma função separada
  });
}