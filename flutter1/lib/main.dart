import 'package:flutter/material.dart';


void main() => runApp(MeuApp());

// ignore: must_be_immutable
class MeuApp extends StatelessWidget {
  var textStyle =
      TextStyle(fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu PrimeiroAPP'),
        ),
        body: Column(
          children: <Widget>[
            Image(image: AssetImage('assets/logo.jpeg')),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Minha Logo aqui',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Text(
                          'Minha logo',
                          style: TextStyle(fontSize: 15, color:Colors.grey),
                          )
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.green,),
                      Text('3.842')
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Colors.blue[50],
                      onPressed: (){},
                      child: Column(
                        children: [
                          Icon(Icons.call, color: Colors.blue),
                          Text('Ligar')
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.blue[50],
                      onPressed: (){},
                      child: Column(
                        children: [
                          Icon(Icons.location_on, color: Colors.blue),
                          Text('Mapa')
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.blue[50],
                      onPressed: (){},
                      child: Column(
                        children: [
                          Icon(Icons.share, color: Colors.blue),
                          Text('Compartilhar',
                          style: TextStyle(fontSize: 13.2),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text('hadhowaidadawfoanonfanefpnfoenwnfgporgnergioerngisoeunginrgispirhnirhnirthiontihiurthniurthnioturhintrhnirthi'),
            )
          ],
        ),
      ),
    );
  }
}

