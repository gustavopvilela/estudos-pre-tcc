import 'dart:io';

main(){
  var nomes = [];
  // utiliza-se com var
  
  bool cond = true;

  while (cond){
    print("Digite um nome:");
    String text = stdin.readLineSync() ?? "";

    if (text == "sair"){
      cond = false;
      print("Programa encerrado.");
    }
    else{
      nomes.add(text);
      // adiciona no array
    }
  }

  print("Os nomes que você digitou são: ${nomes}");
  // não precisa de nenhum caractere especial para mostrá-lo
}