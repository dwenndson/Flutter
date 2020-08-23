import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              child: Center(
                child: Text(
                  'Bem vindo ao app',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            RaisedButton(
              child: Text('Fazer Login'),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            )
          ],
        ),
      ),
    );
  }
}
