import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
            const Padding(
              padding: EdgeInsets.only(top: 32),
              child: Text(
                'Começar JokenPo',
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
                    Image.asset('assets/image/padrao.png'),
                    Text('Escolha do app'),
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.all(32)),
                    Image.asset('assets/image/padrao.png'),
                    Text('Sua Escolha')
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
        ),
      ),
    );
  }
}
