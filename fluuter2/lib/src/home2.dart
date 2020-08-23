import 'package:flutter/material.dart';
import 'package:fluuter2/src/formulario.dart';
import './models/contador.dart';
import 'package:provider/provider.dart';

import 'models/contador.dart';

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Formulario(),

            Container(
              height: 90,
            ),
            TextField(
                decoration: InputDecoration(labelText: 'Digite algo'),
                onChanged: (text) {
                  
                  Provider.of<Contador>(context, listen: false).mudarNome(text);
                },
              ),

            Consumer<Contador>(
                builder: (context, contador, child) =>
                    Text('Meu nome é: ${contador.nome}')
            ),

            Text('Contagem: '),
            //Ler informação do model utilizo o consumer
            Consumer<Contador>(
                builder: (context, contador, child) =>
                    Text(contador.valor.toString())),
            RaisedButton(
              child: Text('Aumentar'),
              onPressed: () {
                //Para executar alguma coisa chama o provider.of
                Provider.of<Contador>(context, listen: false).aumentar();
              },
            ),
            RaisedButton(
              child: Text('Ir para Help'),
              onPressed: () {
                Navigator.pushNamed(context, '/help2');
              },
            ),
          ],
        )
      ),
    );
  }
}
