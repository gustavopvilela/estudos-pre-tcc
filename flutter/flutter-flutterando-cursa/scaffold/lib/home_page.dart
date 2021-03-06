import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() { 
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( // scaffold facilita a construção do app
      appBar: AppBar(
        title: const Text(
          'HomePage',
        ),
      ),
      body: Center(
        child: GestureDetector(
          child: Text(
            'Contador: $counter.',
            style: const TextStyle(
              fontSize: 40.0,
            ),
          ),
          onTap: () {
            setState(() {
              counter++;
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton( // botão de ação flutuante
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
              counter++;
            });
        },
      ),
    );
  }
}