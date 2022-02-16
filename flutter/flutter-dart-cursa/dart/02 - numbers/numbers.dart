void main() {
  //ints
  int number = (-1);
  int hex = 0xDEADBEEF; // hexadecimal
  
  // doubles
  double number2 = 1.1;
  double exponent = 8e5; // exponenciação
  double exponent2 = 1.42e5;

  // num: pode ser int e double
  num number3 = 3;
  num number4 = 5.78;
  num number5 = 56.0001;

  // operações
  number = number.abs(); // valor absoluto
  print(number);

  number2 = number2.floorToDouble(); // arredonda pra baixo
  print(number2);

  number4 = number4.roundToDouble(); // arredonda para o mais próximo
  print(number4);

  number5 = number5.ceilToDouble(); // arredonda para cima
  print(number5);
}