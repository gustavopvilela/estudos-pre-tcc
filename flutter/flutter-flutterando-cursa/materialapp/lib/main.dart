/*
  material app -> é o widget que dá a "cara de aplicativo"
  ao app, é o design system da Google, assim como tem
  o Cupertino da Apple
*/

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( // tema da aplicação
        primarySwatch: Colors.red, // trabalha na paleta de cores vermelha
      ),
      home: Container(
        child: const Center(
          child: Text('Esse é o MaterialApp'),
        ),
      ),
    );
  }
  
}