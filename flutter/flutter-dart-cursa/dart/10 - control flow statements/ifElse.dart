/*
  if e else indicam condições.
*/

import 'dart:math';

void main() {
  var random = Random();
  
  double nota = random.nextInt(10) + random.nextDouble();

  String notaString = nota.toStringAsFixed(2);
  
  nota = double.parse(notaString);

  if(nota < 4.0) { // se menor que 4.0, executa esse bloco de código
    print('Reprovou! :(');
    print('Sua nota foi ${nota}.');
  }
  else if(nota >= 4.0 && nota < 6.0) { // mas se satisfazer essa condição, executa esse bloco de código
    print('Recuperação! :|');
    print('Sua nota foi ${nota}.');
  }
  else { // caso contrário, esse bloco de código
    print('Passou! :)');
    print('Sua nota foi ${nota}.');
  }

  // operador ternário -> situação ? "aprovado" : "reprovado";
  // variável ? true : false;
}