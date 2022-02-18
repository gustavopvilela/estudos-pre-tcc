class Animal {
  String? color;
  String? name;
  int? age;
}

void main() {
  Animal gato = Animal()
    ..color = 'black'
    ..name = 'Eve'
    ..age = 4;
  // o ; vem no fim das declarações

  print('${gato.name} is a cat. Her color is ${gato.color} and her age is ${gato.age} years old.');
}