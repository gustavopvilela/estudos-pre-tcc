import 'dart:math';

class Pessoa {
  late String nome;
  late int idade;
  late double altura;
  late double peso;

  /*
    O modificador "late" significa que a variável em que está junto
    NÃO pode ser nula, mas também terá seu valor depois que for declarada.
    Não na sua própria declaração, isso é útil no caso do método abaixo,
    em que os valores não podem ser nulos, mas eles serão adicionados à
    variável depois, não em sua declaração, pois podem ser modificados, etc.
  */

  // calcular IMC
  /* double imc(){
    return peso / (altura * altura);

    
    Não é necessário ter uma variável para retornar.
    
  } */

  double imc() => peso / pow(altura, 2);
  /*
    Chama-se "arrow function". É como dizer: execute essa operação e retorne o valor que ela der.
  */

  // testar se é maior de idade
  bool maiorIdade(){
    return idade >= 18;

    /*
      Já que idade >= 18 é uma expressão lógica, ele retornará de qualquer forma se ela é falsa ou verdadeira.
    */
  }
}