import 'package:flutter/material.dart';
import 'package:columns/app_controller.dart';

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
      body: Container( // geralmente se envolve uma column com um container pois com ele é possível alterar a largura
        width: double.infinity, // preenche todo o espaço disponível
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // centraliza no centro do eixo principal, que nesse caso é uma coluna
          crossAxisAlignment: CrossAxisAlignment.center,
          /* referente aos filhos da column, se for start,
          todos vão para o lado esquerdo, se for end,
          para o lado direito, por mais que o
          mainAxisAlignment centralize-os na vertical */
          
          children: [ // é um array de child que são colocados enfileirados
            Text('Contador: $counter'),
            DarkThemeSwitch(),
          ],
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