import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Digite seu nome'),
              validator: (value) {
              if (value.isEmpty) {
                return 'Você precisa digitar algum nome';
              }
              return null;
            },
          ),
          RaisedButton(
            child: Text("Enviar"),
            onPressed: () {
              if(_formkey.currentState.validate()){
                print("formulário validado");
              }
            },
          )
        ],
      ),
    );
  }
}
