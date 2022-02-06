import 'calau.dart';
import 'gato.dart';
import 'leao.dart';

void main(List<String> args) {
  Gato gato = Gato(nome: "Eve", barulho: "miau");
  Leao leao = Leao(nome: "Mufasa", barulho: "roaar");
  Calau calau = Calau(nome: "Zazu", barulho: "craaaa");

  print("${gato.nome} faz ${gato.barulho}, ${gato.barulho}.");
  print("${leao.nome} faz ${leao.barulho}, ${leao.barulho}.");
  print("${calau.nome} faz ${calau.barulho}, ${calau.barulho}.");
}