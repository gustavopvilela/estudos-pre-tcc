/*
  asserts: Durante o desenvolvimento, use uma
  declaração assert — assert(condition, optionalMessage);
  — para interromper a execução normal se uma
  condição booleana for falsa.
  
  O primeiro argumento a ser declarado pode ser qualquer
  expressão que resolva para um valor booleano. Se o valor
  da expressão for verdadeiro, a asserção é bem-sucedida e
  a execução continua. Se for falso, a asserção falha e uma
  exceção (um AssertionError) é lançada.

  Quando exatamente os asserts funcionam?
  Isso depende das ferramentas e do framework
  que está sendo utilizado:

  - Flutter habilita asserções no modo de depuração.
  - Ferramentas somente de desenvolvimento, como dartdevc,
    normalmente habilitam asserções por padrão.
  - Algumas ferramentas, como dart run e dart2js, dão suporte
    a declarações por meio de um sinalizador de linha
    de comando: --enable-asserts.

  No código de produção, as assertivas são ignoradas e
  os argumentos para assert não são avaliados.
*/
void main() {
  String urlString = 'a'; 

  assert(urlString.startsWith('https'), 'URL ($urlString) should start with "https".');
  // verificação, caso false uma mensagem
}