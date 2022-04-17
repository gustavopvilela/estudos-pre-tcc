import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.network('https://static.wikia.nocookie.net/snowpiercer-tbs/images/0/09/KMh7P2d.jpg/revision/latest/scale-to-width-down/885?cb=20210220025931')
              ),
              accountName: const Text('Ruth Wardell'),
              accountEmail: const Text('ruth.wardell@email.com')
              ),
            
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Conta'),
              subtitle: const Text('Informações do usuário'),
            ),
            
            ListTile(
              leading: const Icon(Icons.network_wifi),
              title: const Text('Últimas atualizações'),
              subtitle: const Text('Informações quentinhas saindo do forno'),
            ),

            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Configurações'),
              subtitle: const Text('Ajuste aqui seu app :)'),
            ),
            
            ListTile(
              leading: const Icon(Icons.arrow_circle_left_outlined),
              title: const Text('Sair'),
              subtitle: const Text('Encerrar sessão da aplicação'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              }
            ),
            
            ListTile(
              leading: const Icon(Icons.stay_current_portrait),
              title: const Text('Sobre a aplicação'),
              subtitle: const Text('Coisas bem técnicas'),
            ),
          ],
        ),
      ),

      appBar: AppBar(
        title: const Text('Início'),
      ),
    );
  }
}