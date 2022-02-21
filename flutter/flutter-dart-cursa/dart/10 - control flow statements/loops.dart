void main() {
  /* ideal para loops limitados */
  for (int i = 0; i <= 10; i++) {
  // início; fim; incremento
    print(i);
  }

  print('------------------------------');

  int j = 0;
  while (j <= 10) { // enquanto a condição for válida, execute
  // usado para quantidade indefinida
    print(j);
    j++; // se não incrementar fica infinito
  }

  print('------------------------------');

  int k = 0;
  do { // executa o código primeiro, mesmo se a condição inicialmente não for satisfeita
    print(k);
    k++;
  }
  while(k <= 10);
}