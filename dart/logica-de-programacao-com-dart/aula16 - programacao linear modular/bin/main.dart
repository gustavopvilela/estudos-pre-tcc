import 'src/carrinho-compras.dart';
import 'src/criando-keys-dinamicas.dart';
import 'src/imc.dart';
import 'src/maior-idade.dart';

void main(List<String> arguments) {
  if(arguments[0].toUpperCase() == "CALCULO-IDADE"){
    calculoIdade();
  }
  else if(arguments[0].toUpperCase() == "CARRINHO-COMPRAS"){
    carrinhoCompras();
  }
  else if(arguments[0].toUpperCase() == "IMC"){
    imc();
  }
  else if(arguments[0].toUpperCase() == "CADASTRO"){
    cadastrar();
  }
  else{
    print("Esse programa não existe!");
  }
}
