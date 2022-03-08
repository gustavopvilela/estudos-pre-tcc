import 'package:flutter/material.dart';

// flutter é declarativo

/* widget -> classes que extendem da classe Widget
   cada widget recebe um child, que pode receber outro widget dentro
*/

// estado global -> que altera todo o container
// estado local -> que não altera todo o container

// stateless widget -> não altera estado
// stateful widget -> altera o estado

main() { // método principal
  // roda o app, necessita de um widget
  runApp(AppWidget()); 
}

class AppWidget extends StatelessWidget {
  // pode passar dados via construtor também

  @override
  Widget build(BuildContext context) { // TEM que ter um return do tipo Widget
    return Container(
      child: const Center( // já que o const está no "pai", não há necessidade de colocar nos "filhos"
        child: Text(
          'Hello World!',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.white, // Colors.* ou hexadecimal
            fontSize: 20.0 // recebe um double
          ),
        ),
      ),
    );
  }

}