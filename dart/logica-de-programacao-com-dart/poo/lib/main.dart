import 'package:poo/src/pessoa.dart';

void main(List<String> arguments) {
  Pessoa pessoa = Pessoa("Gustavo", 16, "M");
  // declaração do objeto

  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.sexo);
  // depois do . há as propriedades do objeto
}
