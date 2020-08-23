import 'package:flutter/material.dart';

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Center(
          child: Text(args.message),
      )
    );
  }
}
