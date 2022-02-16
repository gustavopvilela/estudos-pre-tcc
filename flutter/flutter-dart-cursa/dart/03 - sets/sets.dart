// sets: coleção não-ordenada de itens únicos. Diferetemente do Map, um set não tem key.

void main() {
  Set<String> halogens = {
    'fluorine',
    'cholrine',
    'bromine',
    'iodine',
    'astatine'
  };

  final nobleGasesSet = const {
    'helium',
    'neon',
    'argon',
    'krypton',
    'xenon',
    'radon',
    'oganesson'
  }; // set constante, não é possível adicionar ou retirar elementos do mesmo

  halogens.add('tennessine');

  print(halogens);
  print('\n');
  
  print('The noble gases are: ');
  for (int i = 0; i < nobleGasesSet.length; i++) {
    print('${nobleGasesSet.elementAt(i)}'); // para acessar os elementos, é necessário utilizar .elementAt(). Isso é específico dos sets
  }

  /*
    assim como em arrays, é possível usar .add(). com addAll(), adiciona-se um set inteiro. Ao usar .length, mostra o tamanho do set. Para remover, basta usar o .remove() e para ver se um elemento existe em um set, utiliza-se .contains(). É possível conveter em List utilizando o .toList(). Mais informações aqui: https://www.w3adda.com/dart-tutorial/dart-sets
  */

  /*
    para criar um set vazio, é necessário fazer:

    var halogens = <String>{};

    ou

    Set<String> halogens = {};
  */
}