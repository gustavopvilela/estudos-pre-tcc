/*
  ! -> inverte a expressão que o segue. '==' é igual, '!=' é diferente, por exemplo.

  || -> operador lógico de OU

  && -> operador lógico de E (AND)
*/

import 'dart:math';

void main() {
  var random = Random();

  int a = random.nextInt(100);

  int b = random.nextInt(100);

  int c = random.nextInt(100);

  if(!(a == b)) {
    print('a é DIFERENTE de b. a é ${a} e b é ${b}.');
  }

  if((a >= c) || (b >= c)) {
    print('a OU b é maior ou igual a c. a é ${a}, b é ${b} e c é ${c}.');
  }
  else {
    print('Nenhum de a e b é maior ou igual a c. A condição OU (OR) não foi satisfeita.');
  }

  if ((a >= c) && (b >= c)) {
    print('a E b é maior ou igual a c. a é ${a}, b é ${b} e c é ${c}.');
  }
  else {
    print('Apenas um ou nenhum de a e b é maior ou igual a c. A condição E (AND) não foi satisfeita.');
  }
}