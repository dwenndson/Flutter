// ignore: must_be_immutable
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Name extends StatelessWidget {
  Name(
      {
      //required obriga sempre passar os valores para os parametros
      this.title,
      this.onPress});

  var title;
  Function onPress;

  @override
  Widget build(BuildContext context) {
    if (title == null) {
      title = 'valor padrão';
    }
    return Container(
      width: 200,
      color: Colors.red[200],
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(this.title),
          FlatButton(
            color: Colors.green,
            child: Text('Click Aqui'),
            onPressed: this.onPress,
          )
        ],
      ),
    );
  }
}
