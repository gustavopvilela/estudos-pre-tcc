import 'dart:io';

/* Variável global -> para tornar uma variável global,
basta declará-la fora de qualquer método. Assim
ela poderá ser usada por qualquer método do arquivo. */

main(){
  List<String> produtos = [];
  bool condition = true;

  while(condition){
    print("===== Adicione um produto à sua lista! =====");
    String text = stdin.readLineSync()!;
    
    if(text.toUpperCase() == "SAIR"){
      condition = false;
      
      print("===== Programa encerrado =====");
    }

    else if(text.toUpperCase() == "IMPRIMIR"){
      imprimirProdutos(produtos);
    }

    else if(text.toUpperCase() == "REMOVER"){
      removerProduto(produtos);
    }

    else{
      produtos.add(text);
    }
  }
}

imprimirProdutos(vetor){
  for(var i = 0; i < vetor.length; i++){
    print("Produto ${i + 1} - ${vetor[i]}");
  }
  
  // i + 1 -> isso dá uma melhor visibilidade ao usuário (muitos não começam a contar a partir do 0, mas do 1. Isso não interfere no programa em si, é mais questão de visibilidade e acessibilidade)
}

removerProduto(vetor){
  print("==== O que você quer remover? (Digite apenas o número) =====");
      
  imprimirProdutos(vetor);

  int itemARemover = int.parse(stdin.readLineSync()!);

  if((itemARemover > vetor.length) || itemARemover < 1){
    print("Produto inexistente! Erro ao remover!");
  }
  else{
    vetor.removeAt(itemARemover - 1);
    // itemARemover - 1 -> já que adicionei 1 para melhor visibilidade, tiro 1 para o programa funcionar certinho

    print("===== Item removido com sucesso! =====");
  }
}