import 'package:flutter/material.dart';

class TestePage extends StatefulWidget {
  @override
  _TestePage createState() => _TestePage();
}

class _TestePage extends State<TestePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Teste'),
      ),
      body: Center(
        child: Text('Teste'),
      ),
    );
  }
}
