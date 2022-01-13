import 'dart:io';

main(){
  bool condition = true;

  while (condition){
    print("Escreva um texto, por obséquio:");
    String text = stdin.readLineSync() ?? "";

    if(text == "sair"){
      condition = false;
      print("Fim do programa.");
    }
    else{
      print('Você digitou "${text}".');
    }
  }
}