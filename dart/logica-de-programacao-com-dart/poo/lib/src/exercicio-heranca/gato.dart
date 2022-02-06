import 'animal.dart';

class Gato extends Animal {
  String? nome;

  Gato({this.nome, barulho}): super(barulho: barulho);
  /*
    super é o construtor da classe-pai, nesse caso, "Animal".
    Aqui, colocamos a variável que queremos utilizar, nesse caso,
    é a variável "barulho". Para funcionar, a variável também deve estar
    no contrutor da classe-filha, e deve ser passada por referência da
    variável da classe pai. Note:
    super(barulho: barulho) -> o primeiro "barulho" é a variável da classe-
    -pai, e o segundo é o "barulho" passado por referência na classe-filha,
    nesse caso, essa referência está em ({this.nome, barulho}).
  */
}