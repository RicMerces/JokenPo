import 'package:flutter/material.dart';

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
          children: [Image.asset('assets/')],
        ),
      ),
    );
  }
}
