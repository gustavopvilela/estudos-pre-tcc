import 'dart:io';

main(){
  calculoIMC();
}

calculoIMC(){
  print("===== Cálculo de IMC =====");
  
  print("Digite a sua altura:");
  String inputAltura = stdin.readLineSync() ?? "";
  var altura = double.parse(inputAltura);

  print("Digite o seu peso:");
  String inputPeso = stdin.readLineSync() ?? "";
  var peso = double.parse(inputPeso);

  var imc = peso / (altura * altura);

  imprimirResultado(imc);
  // como se fosse no PHP
  // como pode-se ver, pode chamar uma função dentro de outra
}

imprimirResultado(imc){
  var resultado;

  if(imc < 18.5){
    resultado = "abaixo do peso";
  }
  else if(imc > 18.5 && imc <= 25.0){
    resultado = "peso normal";
  }
  else if(imc >= 25.0 && imc <= 30.0){
    resultado = "sobrepeso";
  }
  else if(imc >= 30.0 && imc < 35.0){
    resultado = "obesidade grau 1";
  }
  else if(imc >= 35.0 && imc < 40.0){
    resultado = "obesidade grau 2";
  }
  else{
    resultado = "obesidade grau 3";
  }

  print("Seu IMC é ${imc} e seu resultado é " + resultado + ".");
}