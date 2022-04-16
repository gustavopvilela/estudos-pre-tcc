import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // dá scroll a qualquer coisa que esteja dentro dele, mas com ele NÃO dá pra trabalhar com doule.infinity
        child: SizedBox(
          width: MediaQuery.of(context).size.width, // NÃO funciona com o Material, só com Scaffold
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (texto) {
                    email = texto;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                
                const SizedBox(height: 20),
      
                TextField(
                  onChanged: (texto2) {
                    senha = texto2;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),
      
                SizedBox(height: 30),
      
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.yellow,
                  ),
                  onPressed: () {
                    if (email == 'a@b.com' && senha == '123') {
                      Navigator.of(context).pushReplacementNamed('/home'); // rota nomeada 'substituível'
                    }
                    else {
                      AlertDialog(
                        title: const Text('Erro!'),
                        content: const Text('A senha ou o email estão incorretos. Tente novamente.'),
                        actions: [
                          TextButton(
                            child: const Text('Tentar novamente'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    }
                  },
                  child: const Text('Entrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}