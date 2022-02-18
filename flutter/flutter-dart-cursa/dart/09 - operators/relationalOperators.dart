import 'dart:math';

void main() {
  var random = Random();

  int a = random.nextInt(100);

  int b = random.nextInt(100);

  if (a == b) {
    print('a é IGUAL a b. O valor é ${a}.');
  } // o operador de igual pode ser usado em strings.
  else if (a != b) {
    print('a é DIFERENTE de b, o valor de a é ${a}, e o de b é ${b}.');
  }

  print('---------------------');

  if (a > b) {
    print('a é MAIOR que b, o valor de a é ${a}, e o de b é ${b}.');
  }
  else if (a < b) {
    print('a é MENOR que b, o valor de a é ${a}, e o de b é ${b}.');
  }

  print('---------------------');

  if (a >= b) {
    print('a é MAIOR OU IGUAL a b, o valor de a é ${a}, e o de b é ${b}.');
  }
  else if (a <= b) {
    print('a é MENOR OU IGUAL a b, o valor de a é ${a}, e o de b é ${b}.');
  }
}