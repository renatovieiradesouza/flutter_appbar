import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DeusEspiritoSanto.dart';
import 'DeusFilho.dart';
import 'DeusPai.dart';
import 'alertDialogs.dart';

void main() {
  runApp(MaterialApp(
      title: "App Bar Exemplo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _atualizaMensagem(bool resposta) {
    if (resposta) {
      setState(() {
        _mensagem = 'Ore todos os dias!';
      });
    } else {
      setState(() {
        _mensagem = 'Pense bem, sozinho é mais difícil!';
      });
    }
  }

  String _mensagem = "Santíssima Trindade";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Color(0xFFD51017),
            ),
            onPressed: () async {
              var result = await DialogUtils.displayDialogOKCallBack(
                  context, 'Atenção!', 'Você sonha com o céu?', 'Não', 'Sim');
              _atualizaMensagem(result);
              // if (result == true) {
              //   print("button ok is clicked");
              // } else {
              //   print(result);
              // }
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: ExactAssetImage('assets/imagens/god.png', scale: 6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                  child: Text(
                'Santíssima Trindade',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
            ),
            ListTile(
              title: Text('Deus Pai'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeusPai()),
                );
              },
            ),
            ListTile(
              title: Text('Deus Filho'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DeusFilho()));
              },
            ),
            ListTile(
              title: Text('Deus Espírito Santo'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeusEspiritoSanto()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Container(
                    child: Image.asset(
                      "assets/imagens/ceu.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Container(
                        child: Text(
                      _mensagem,
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ))),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
