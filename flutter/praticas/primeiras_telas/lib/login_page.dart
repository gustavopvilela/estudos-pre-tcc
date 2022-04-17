import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: 400,
                
                child: Image.asset('assets/images/login_image.png'),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Usuário",
                            border: OutlineInputBorder(),
                          ), 
                        ),

                        SizedBox(height: 10),

                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            border: OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(height: 20),

                        SizedBox(
                          width: 200,
                          height: 60,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.of(context).pushReplacementNamed('/home');
                            },
                            icon: const Icon(
                              Icons.arrow_circle_right_outlined,
                              size: 30
                            ),
                            label: const Text(
                              'Entrar',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}