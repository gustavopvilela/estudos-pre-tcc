/*
  o switch é útil quando se há uma variável que possui valores limitados, quando se não se há isso, é melhor usar um if else.
*/

void main() {
  String linguagem = 'Dart';

  switch(linguagem) {
    case 'Dart':
      print('Dart!!!');
    break;
    
    case 'Java':
      print('Java...');
    break;

    case 'Swift':
      print('Swift...');
    break;

    default:
      print('Outra...');
  }
}