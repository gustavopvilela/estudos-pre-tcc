import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'models/item.dart'; // interface do android, a do iOS é a cupertino

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

class HomePage extends StatefulWidget {
  List<Item>? items;

  HomePage({Key? key}) : super(key: key) {
    items = [];
  }
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { // as coisas que vão aparecer em tela deverão ser colocadas aqui
  var newTaskControl = TextEditingController();

  void add() {
    if(newTaskControl.text.isEmpty) {
      return; // se estivwer vazio, não adiciona e não executa o setState
    }
    
    setState(() {
      widget.items!.add(
        Item(
          title: newTaskControl.text,
          isDone: false
        )
      );

      newTaskControl.clear();
      save();
    });
  }
  
  void remove(int index) {
    setState(() {
      widget.items!.removeAt(index);
      save();
    });
  }

  Future load() async { // função assíncrona, são coisas que não se recebem em tempo real
    var prefs = await SharedPreferences.getInstance();

    var data = prefs.getString('data');

    if (data != null) {
      Iterable decoded = jsonDecode(data); // é uma coluna onde tem uma iteração, então é possível fazer loops nela

      List<Item> result = decoded.map((x) => Item.fromJson(x)).toList();

      setState(() {
        widget.items = result;
      });
    }
  }
  
  save() async {
    var prefs = await SharedPreferences.getInstance();
    
    await prefs.setString('data', jsonEncode(widget.items));
  }
  
  _HomePageState() {
    load();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold representa uma página
      appBar: AppBar(
        title: TextFormField(
          controller: newTaskControl,
          keyboardType: TextInputType.text, // tipo do teclado, nesse caso, o completo
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          decoration: const InputDecoration(
            labelText: "Nova tarefa",
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.builder( // renderiza em tempo "real", sob demanda, aumenta a performance
        itemCount: widget.items!.length,
        
        itemBuilder: (BuildContext ctxt, int index) {
          final item = widget.items![index];
          
          return Dismissible(
            child: CheckboxListTile(
              title: Text(item.title),
              value: item.isDone,
              onChanged: (value) {
                setState(() { // só funciona em stateful, ele muda o estado da coisa, em grosso modo
                  item.isDone = value!;
                  save();
                });
              },
            ),
            key: Key(item.title),
            background: Container(
              color: Colors.red.withOpacity(0.2),
            ),
            onDismissed: (direction) {
              remove(index);
            }
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add, // está passando a função para o onPressed, não chamando-a
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue.shade800,
      ),
    );
  }
}