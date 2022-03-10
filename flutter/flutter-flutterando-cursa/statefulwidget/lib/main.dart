import 'package:flutter/material.dart';

main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomePage(), // NÃO coloca o estado, mas a classe "normal"
    );
  }

}

class HomePage extends StatefulWidget { // não tem buikd
  @override
  State<HomePage> createState() { // é necessário que se crie um estado para o stateful widget
    return HomePageState(); // retorna o estado da página
  }
}
                         // State<classe que referencia>, nesse caso, HomePage
class HomePageState extends State<HomePage> { // extende de State, já que é um estado
  int counter = 0;
  
  @override
  Widget build(BuildContext context) { // aqui tem o build
    return Container(
      child: Center(
        child: GestureDetector( // detecta o clique no filho
          child: Text('Contador: $counter.'),
          onTap: () {
            setState(() { // muda o estado, chama o build novamente
              counter++; // para mudar, é necessário dizer que o estado precisa ser mudado
            });
          },
        ),
      ),
    );
  }
}