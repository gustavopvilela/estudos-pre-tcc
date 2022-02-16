// dart é uma linguagem type-safe, então, não necessariamente é necessário a tipagem das variáveis, por mais que seja uma boa prática

void main() {
  String name = 'Voyager I'; 
  int year = 1977;
  double antennaDiameter = 3.7;
  List<String> flyByObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  Map<String, dynamic> image = {
    'tags': ['saturn', 'planet'],
    'url': './path/to/saturn.jpg'
  };

  print('${name}, which was launched in ${year}, had its antenna diameter of ${antennaDiameter} meters passed by these space objects: ${flyByObjects[0]}, ${flyByObjects[1]}, ${flyByObjects[2]}, ${flyByObjects[3]}. And the following is the image: ${image}.');

  /*
    String é texto;
    
    int são números inteiros;
    
    double são números de ponto flutuante;
    
    List é uma lista (array). O <> após indica o tipo de dados que há na lista;
    
    Map indica um mapa. O < , > indica o tipo dos dados. O primeiro é o tipo da key e o segundo é o tipo dos dados da key;
    
    dynamic indica  que a variável pode mutar entre os tipos, por exemplo, pode ser int e, após, String. É mais recomendado utilizar dynamic (ou Object, é a mesma coisa) do que var;

    final indica que a variável não muda. const é implicitamente um final, mas o final só pode ser declarado uma vez apenas. Após o final, pode ser declarado o tipo também, como String e int;

    bool indica se é true ou false.
  */
}