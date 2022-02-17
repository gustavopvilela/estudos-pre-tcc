/*
  runas: no Dart, as runas expõem os pontos de código Unicode de uma string. Você pode usar o pacote de caracteres para visualizar ou manipular caracteres percebidos pelo usuário, também conhecidos como clusters de grafema Unicode (estendidos). A maneira usual de expressar um ponto de código Unicode é \uXXXX, onde XXXX é um valor hexadecimal de 4 dígitos. Para especificar mais ou menos de 4 dígitos hexadecimais, coloque o valor entre colchetes. Por exemplo, o emoji rindo (😆) é \u{1f606}. Para acessar o Unicode: https://unicode-table.com/pt/
  Para emojis: https://apps.timwhitlock.info/emoji/tables/unicode
*/

void main() {
  String esh = '\u01a9';
  print('A letra maiúscula latina Esh: ${esh}');

  String oOgonekMacron = '\u01ec';
  print('A letra latoina maiúscula O com ogonek e macron: ${oOgonekMacron}');

  String onda = '\u{1f30a}';
  print('O emoji de onda: ${onda}');

  print(esh.codeUnits); // mostra o código Unit
  print(oOgonekMacron.runes.toList());

  Runes input = new Runes(
    '\u2665 \u{1f605} \u{1f60e} \u{1f42b} \u{1f596} \u{1f44d}'
  ); // uma "lista" de runas
  print(new String.fromCharCodes(input)); // imprime as runas a partir de seu código
}