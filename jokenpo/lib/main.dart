import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: JokenPo(),
  ));
}

class JokenPo extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<JokenPo> {
  String _textoInicial = 'Começar JokenPo';
  var _linkDaImg = 'assets/image/padrao.png';
  var _imgEscolhaDoApp = 'assets/image/padrao.png';

  void _escolhaUsuario(String userEscolha) {
    switch (userEscolha) {
      case 'pedra':
        setState(() {
          this._linkDaImg = 'assets/image/pedra.png';
        });
        break;
      case 'papel':
        setState(() {
          this._linkDaImg = 'assets/image/papel.png';
        });
        break;
      case 'tesoura':
        setState(() {
          this._linkDaImg = 'assets/image/tesoura.png';
        });
        break;
    }

    _escolhaDoApp();
  }

  void _escolhaDoApp() {
    var opcoes = ['pedra', 'papel', 'tesoura'];
    var numero = Random().nextInt(opcoes.length);
    var escolha = opcoes[numero];

    switch (escolha) {
      case 'pedra':
        setState(() {
          this._imgEscolhaDoApp = 'assets/image/pedra.png';
        });
        break;
      case 'papel':
        setState(() {
          this._imgEscolhaDoApp = 'assets/image/papel.png';
        });
        break;
      case 'tesoura':
        setState(() {
          this._imgEscolhaDoApp = 'assets/image/tesoura.png';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Joken Po'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Text(
                _textoInicial,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Padding(padding: EdgeInsets.all(32)),
                    Image.asset(_imgEscolhaDoApp),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Escolha do app',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.all(32)),
                    Image.asset(_linkDaImg),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Sua escolha',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 20),
                  child: Text(
                    'Selecione um dos sinais de mão para desafiar o app',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => _escolhaUsuario('pedra'),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/image/pedra.png',
                          width: 100,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _escolhaUsuario('papel'),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/image/papel.png',
                          width: 100,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _escolhaUsuario('tesoura'),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/image/tesoura.png',
                          width: 100,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
