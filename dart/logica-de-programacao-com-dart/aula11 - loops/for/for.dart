main(){
  // início; condição; incremento
  // i++ -> i = i + 1
  for (int i = 0; i < 10; i++){
    /* É recomendado que:
        -> se começar com 0, use "<";
        -> se começar com 1, use "<=";
    */
    
    print("Este é o $iº loop.");
    // o $i é o mesmo de ${i}
    // o ${} serve para colocar expressões também, como ${i + 1}
  }

  String texto = "Hello World!";

  for (int i = 0; i < texto.length; i++){
    print("Esse loop é do ${i + 1}º caractere");
  }
}