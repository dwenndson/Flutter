import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int contagem = 0;
  var fundo = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        color: fundo,
        child: Column(
          children: <Widget>[
            Text('Contagem: '),
            Text(contagem.toString()),
            RaisedButton(
              child: Text('Aumentar'),
              onPressed: () {
                setState(() {
                  contagem++;
                });
              },
            ),
            RaisedButton(
              child: Text('Azul'),
              onPressed: () {
                setState(() {
                  fundo = Colors.blue;
                });
              },
            ),
            RaisedButton(
              child: Text("Red"),
              onPressed: (){
                setState(() {
                  fundo = Colors.red;
                });
              }
            )
          ],
        ),
      ),
    );
  }
}
