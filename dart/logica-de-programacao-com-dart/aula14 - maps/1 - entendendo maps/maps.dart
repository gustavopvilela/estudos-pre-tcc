// maps são uma lista que pode ser acessada não apenas com índice, mas com Strings, que são os nomes dados a cada posição desse vetor.

main(){
  // dynamic -> recebe qualquer tipo de valor
  
  // os maps são declarados dessa maneira: Map<tipo da key, tipo do valor da key>
  Map<String, dynamic> maps = {
    "nome":     "Gustavo",
    "idade":    16,
    "cidade":   "Nova York",
    "estado":   "Nova York"
  };
  // antes dos : -> key
  // depois dos : -> valor da key

  print(maps["nome"]);

  // pode mudar os valores. Exemplo:
  // maps["nome"] = "Grinzle Standell"
}