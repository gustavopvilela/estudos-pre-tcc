import 'dart:math';

void main() {
  /*
    operador ternário -> um if resumido
  */

  var random = Random();

  int a = random.nextInt(100);
  
  bool isPublic;

  if (a > 50) {
    isPublic = true;
  }
  else {
    isPublic = false;
  }

  String visibility = isPublic ? 'public' : 'private';
  // variável = condição ? se verdadeiro, esse valor : se falso, esse valor

  print('A visibilidade é ${visibility}.');

  print('------------------------');

  // operador binário

  String playerName(String? name) => name ?? 'Guest';
  // se não-nulo, esse valor ?? se nulo, esse valor

  String? nome;
  
  if (a > 50) {
    nome = 'Player One';
  }
  else {
    nome = null;
  }
  
  print('O nome de jogador é ${playerName(nome)}.');
}