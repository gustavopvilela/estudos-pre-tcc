import 'package:flutter/material.dart';
import 'package:inputs/app_controller.dart';
import 'package:inputs/login_page.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.yellow,
            brightness: AppController.instance.isDark ? Brightness.dark : Brightness.light,
          ),
          // home: LoginPage(), // NÃO coloca o estado, mas a classe "normal"
          initialRoute: '/', // chama-se rotas nomedas
          routes: { // é um map de rotas
            '/': (context) => LoginPage(), // / é a página principal
            '/home': (context) => HomePage(),
          }
        );
      },
    );
  }

}