import 'package:flutter/material.dart';
import 'package:rows/app_controller.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: AppController.instance.isDark ? Brightness.dark : Brightness.light,
          ),
          home: HomePage(), // NÃO coloca o estado, mas a classe "normal"
        );
      },
    );
  }

}