main(){
  List<String> nomes = ["Lucas", "Gustavo", "Agermano"];

  // funções dos arrays

  print(nomes.length);
  // tamanho do array

  nomes.add("Grinzle");
  // adiciona item no array
  print(nomes);
  print(nomes.length);

  print(nomes[0]);
  // posição especíica do array, começa sempre no 0

  nomes.remove("Grinzle");
  // remove item do array
  print(nomes);

  nomes.removeAt(2);
  // remove a partir de uma posição
  print(nomes);

  // a tipagem do array é feita por List<tipo>
  // se for um array de string: List<String>
  // de int: List<int>
  // e assim vai

  List<int> numeros = [1, 2, 3, 4, 5];
  print(numeros);

  List<double> floats = [1.12, 3.14, 5.984];
  print(floats);

  List<bool> isTrue = [true, false, false, true, false, true];
  print(isTrue);
}