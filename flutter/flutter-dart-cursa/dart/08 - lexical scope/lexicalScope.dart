/* Dart é uma linguagem com escopo léxico, o que significa que o escopo das variáveis é determinado estaticamente, simplesmente pelo layout do código. Você pode “seguir as chaves de dentro para fora” para ver se uma variável está no escopo.

Aqui está um exemplo de funções aninhadas com variáveis em cada nível de escopo: */

bool topLevel = true;

void main() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}

/*
  Então é possível notar que a função nestedFunction() consegue usar as variáveis de todos os níveis acima dela.

  Assim, a função main() não consegue acessar as variáveis que estão abaixo dela.

  nestedFunction() -> conegue acessar as variáveis insideNestedFunction, insideFunction, insideMain e topLevel

  myFunction() -> consegue acessar as variáveis insideFunction, insideMain e topLevel

  main() -> consegue acessar apenas insideMain e topLevel
  
  bool topLevel -> pode ser acessada por todas as funções, pois é uma variável global, declarada fora de qualquer escopo.
*/