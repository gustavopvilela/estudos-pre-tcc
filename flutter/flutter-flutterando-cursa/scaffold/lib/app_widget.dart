import 'package:flutter/material.dart';
import 'home_page.dart';

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