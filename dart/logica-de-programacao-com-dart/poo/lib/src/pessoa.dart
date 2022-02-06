//declaração de classe
import 'package:poo/src/human.dart';

class Pessoa extends Human { // a classe pessoa pega coisas da classe Human, nesse caso, as variáveis peso e altura
  String nome;
  int idade;
  String sexo;

  String? _nomeLocal; // declaração de uma variável local, ela não pode ser usada fora desse escopo

  // métodos contrutores
  // passa os valores diretamente na declaração

  Pessoa(this.nome, this.idade, this.sexo);
  // o this se refere às variáveis de fora do método construtor
}