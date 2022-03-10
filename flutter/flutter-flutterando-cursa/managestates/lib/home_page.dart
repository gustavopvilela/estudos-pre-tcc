import 'package:flutter/material.dart';
import 'package:managestates/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() { 
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  bool changeTheme = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( // scaffold facilita a construção do app
      appBar: AppBar(
        title: const Text(
          'HomePage',
        ),
        actions: [
          DarkThemeSwitch(),
        ],
      ),
      body: Center(
        child: GestureDetector(
          child: Text(
            'Contador: $counter.',
            style: const TextStyle(
              fontSize: 40.0,
            ),
          ),
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

class DarkThemeSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDark,
      onChanged: (changeTheme) {
        AppController.instance.changeTheme(); // não é necessário setState pois altera o estado global, não o local
      }
    );
  }
}

/*
  Componentização: reutilização de código.
*/