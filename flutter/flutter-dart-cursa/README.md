# O que é este repositório?
Este repositório é utilizado para estudos de Dart e Flutter pelo curso *[Flutter e Dart no desenvolvimento de aplicativos](https://cursa.app/pt/curso/flutter-e-dart-no-desenvolvimento-de-apps-por-daves-tecnologia)* produzido por *[Daves Tecnologia](https://cursa.app/pt/professor/daves-tecnologia)* e assistido pelo site do *[Cursa](https://cursa.app/pt/)*. Os estudos da linguagem e do *framework* são necessários para a realização do Trabalho de Conclusão de Curso (TCC) a ser finalizado, entregue e apresentado ao final do ano de 2022.

# Conceitos
## Flutter
![Logo do Flutter](https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png)*Framework* utilizado para desenvolver aplicativos nativamente tanto em Android quanto em iOS.

## Google Fuchsia OS
![Logo do Google Fuchsia OS](https://t.ctcdn.com.br/FvPL4F2U7kmHvi-GKRkAcg69qoQ=/1024x0/smart/i424598.jpeg)Sistema operacional em desenvolvimento pela *Google*, com a proposta de substituir o *Android*. É derivado do *Little Kernel*, que fora destinado a sistemas embarcados e é escrito em *C*.

## Dart
![Logo do Dart](https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Dart_programming_language_logo.svg/1024px-Dart_programming_language_logo.svg.png)*Dart* é uma linguagem de programação desenvolvida pelo *Google*. Originalmente veio com a proposta de substituir o *JavaScript*. É possível compilá-la para JavaScript. Um exemplo de código em Dart:

    void main(){
	    print('Olá, Mundo!');
    }

### Conceitos importantes da linguagem
1. Tudo o que se pode colocar numa variável é um objeto, e cada objecto é uma instância de uma classe. Mesmo números, funções, e nulos são objetos. Com excepção do nulo (se activar o som de segurança nulo), todos os objectos herdados da classe Objeto.
2. Embora Dart seja fortemente tipado, as anotações de tipo são opcionais porque Dart pode inferir tipos.
3. Se ativar o *null-safety*, as variáveis não podem conter valores nulos, a menos que se diga que podem. Pode tornar uma variável nula, colocando um ponto de interrogação (?) no final do seu tipo. Por exemplo, uma variável do tipo *int?* pode ser um número inteiro, ou pode ser nula. Se souber que uma expressão nunca avalia como nula mas Dart discorda, pode acrescentar ! para afirmar que não é nula (e para lançar uma exceção se o for). Um exemplo: *int x = nullableButNotNullInt!*
4. Quando você quiser dizer explicitamente que qualquer tipo é permitido, use o tipo *Object?* (se você ativou o *null-safety*), *Object* ou — se precisar adiar a verificação de tipo até o tempo de execução — o tipo especial *dynamic*.
5. O Dart suporta tipos genéricos, como *List<int>* (uma lista de inteiros) ou *List<Object>* (uma lista de objetos de qualquer tipo).
6. O Dart suporta funções de nível superior (como *main()*), bem como funções vinculadas a uma classe ou objeto (métodos estáticos e de instância, respectivamente). Você também pode criar funções dentro de funções (funções aninhadas ou locais).
7. Da mesma forma, o Dart suporta variáveis de nível superior, bem como variáveis vinculadas a uma classe ou objeto (variáveis estáticas e de instância). As variáveis de instância às vezes são conhecidas como campos ou propriedades.
8. Ao contrário do Java, o Dart não possui as palavras-chave *public*, *protected* e *private*. Se um identificador começa com um sublinhado (_), ele é privado para sua biblioteca.
9. Os identificadores podem começar com uma letra ou sublinhado (_), seguido por qualquer combinação desses caracteres mais dígitos.
10. O Dart tem expressões (que têm valores de tempo de execução) e instruções (que não têm). Por exemplo, a expressão condicional *condition ? expr1 : expr2* tem um valor de *expr1* ou *expr2*. Compare isso com uma instrução *if-else*, que não tem valor. Uma instrução geralmente contém uma ou mais expressões, mas uma expressão não pode conter diretamente uma instrução.
11. As ferramentas Dart podem relatar dois tipos de problemas: avisos e erros. 
11.1. Os avisos são apenas indicações de que seu código pode não funcionar, mas não impedem que seu programa seja executado.
11.2. Os erros podem ser em tempo de compilação ou em tempo de execução. Um erro em tempo de compilação impede que o código seja executado; um erro em tempo de execução resulta em uma exceção sendo gerada enquanto o código é executado.