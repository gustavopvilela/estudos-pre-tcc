import 'dart:io'; // io == input/output

calculoIdade(){
  // algoritmo para saber se a pessoa é maior de idade

  print("Digite sua idade:");

  String inputIdade = stdin.readLineSync() ?? "1";
  // é como se fosse o Scanner do Java
  /* delimitei à variável ser apenas uma String, pois o stdin.readLineSync() retorna um valor em "String?", ou seja, que pode receber um valor nulo. Então caso obtenha um valor nulo (a parte do ?? "1"), ela vai obter o valor 1. */

  var idade = int.parse(inputIdade);
  // transforma o inputIdade em int.

  if(idade >= 50){
    print("Você é maior de idade e está na melhor idade.");
  }
  else if(idade >= 18){
    print("Você é maior de idade e é adulto.");
  }
  else if(idade >= 12){
    print("Você é menor de idade e adolescente.");
  }
  else{
    print("Você é menor de idade e criança.");
  }
}