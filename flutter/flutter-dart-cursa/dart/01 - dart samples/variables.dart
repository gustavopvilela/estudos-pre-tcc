// dart é uma linguagem type-safe, então, não necessariamente é necessário a tipagem das variáveis, por mais que seja uma boa prática

void main() {
  var name = 'Voyager I'; 
  var year = 1977;
  var antennaDiameter = 3.7;
  var flyByObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn', 'planet'],
    'url': './path/to/saturn.jpg'
  };

  print('${name}, which was launched in ${year}, had its antenna diameter of ${antennaDiameter} meters passed by these space objects: ${flyByObjects[0]}, ${flyByObjects[1]}, ${flyByObjects[2]}, ${flyByObjects[3]}. And the following is the image: ${image}.');
}