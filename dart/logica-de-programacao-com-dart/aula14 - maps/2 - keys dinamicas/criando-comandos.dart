import 'dart:io';


List<Map<String, dynamic>> cadastros = [];

main(){
  bool condition = true;

  while(condition){
    print("=== O que deseja fazer? ===");
    String comando = stdin.readLineSync()!;

    if(comando.toUpperCase() == "SAIR"){
      print("=== Programa encerrado! ===");
      
      condition = false;
    }

    else if(comando.toUpperCase() == "CADASTRAR"){
      cadastrar();
    }

    else if(comando.toUpperCase() == "IMPRIMIR"){
      imprimir();
    }

    else{
      print("Esse comando não existe!");
    }
  }
}

cadastrar(){
  Map<String, dynamic> cadastro = {};
  
  print("Digite seu nome:");
  cadastro["nome"] = stdin.readLineSync()!;

  print("Digite sua idade:");
  cadastro["idade"] = int.parse(stdin.readLineSync()!);

  print("Digite sua cidade:");
  cadastro["cidade"] = stdin.readLineSync()!;

  print("Digite seu estado:");
  cadastro["estado"] = stdin.readLineSync()!;

  cadastros.add(cadastro);

  print("=== Cadastro finalizado! ===");
}

imprimir(){
  for(var i = 0; i < cadastros.length; i++){
    print("Cadastro ${i + 1} - ${cadastros[i]}");
    // i + 1 -> melhor visibilidade
  }
}