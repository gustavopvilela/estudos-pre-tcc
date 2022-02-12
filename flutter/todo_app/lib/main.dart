import 'package:flutter/material.dart'; // interface do android, a do iOS é a cupertino

// stateless widget são coisas que não têm interação que não necessitam de manter um estado, como coisas apenas visuais, como títulos.
// stateful widget são coisas que têm interação e necessitam de manter um estado

// sempre retorne o MaterialApp

// aqui é uma linguagem declarativa

void main() {
  runApp(App());
  // a função main, que roda tudo sempre será assim
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-do App',
      debugShowCheckedModeBanner: false, // desativa a barrinha de debug
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), //chama a aplicação, nesse caso, uma home page
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold representa uma página
      appBar: AppBar(
        title: const Text("To-do List"),
        actions: const <Widget>[
          Icon(Icons.plus_one),
        ],
      ),
      body: Container(
        child: const Center(
          child: Text("Olá, Mundo!"),
        ),
      ),
    );
  }
}