
import 'dart:io';
imc(){
  print("===== Cálculo de IMC =====");
  
  print("Digite a sua altura:");
  String inputAltura = stdin.readLineSync() ?? "";
  var altura = double.parse(inputAltura);

  print("Digite o seu peso:");
  String inputPeso = stdin.readLineSync() ?? "";
  var peso = double.parse(inputPeso);

  var imc = peso / (altura * altura);

  var resultado;

  if(imc < 18.5){
    resultado = "abaixo do peso";
  }
  else if(imc > 18.5 && imc <= 24.9){
    resultado = "peso normal";
  }
  else if(imc >= 25.0 && imc <= 29.9){
    resultado = "sobrepeso";
  }
  else if(imc >= 30.0 && imc <= 34.9){
    resultado = "obesidade grau 1";
  }
  else if(imc >= 35.0 && imc <= 39.9){
    resultado = "obesidade grau 2";
  }
  else{
    resultado = "obesidade grau 3";
  }

  print("Seu IMC é ${imc} e seu resultado é " + resultado + ".");
  // por algum motivo, o dart não permite a junção de variáveis numéricas com Strings. Um jeito de contornar isso é digitando ${variável}. Veja que a variável resutado não dá erro no código, mas se eu fizer o mesmo com a variável imc, dá.
}