import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.lightGreen[200],
        ),
      ),
      debugShowCheckedModeBanner: false,
      
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}