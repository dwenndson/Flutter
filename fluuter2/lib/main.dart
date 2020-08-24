import 'package:flutter/material.dart';
import 'package:fluuter2/src/help.dart';
import 'package:fluuter2/src/help2.dart';
import 'package:fluuter2/src/home.dart';
import 'package:fluuter2/src/home2.dart';
import 'package:fluuter2/src/home3.dart';
import 'package:fluuter2/src/login.dart';
import 'package:fluuter2/src/teste.dart';
import 'package:provider/provider.dart';
import 'src/models/contador.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) =>Contador()),
    ],
    child: MyApp(),
  )
);

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
        '/help': (context) => HelpPage(),
        '/home2': (context) => HomePage2(),
        '/help2': (context) => HelpPage2(),
        '/home3': (context) => HomePage3(),
        '/login': (context) => LoginPage(),
        '/teste': (context) => TestePage()
      },
      initialRoute: '/home3',
    );
  }
}
