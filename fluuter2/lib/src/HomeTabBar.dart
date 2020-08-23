import 'package:flutter/material.dart';
import 'package:fluuter2/src/help.dart';
import 'package:fluuter2/src/home.dart';

class HomeTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Text('Flutter 2'),
            alignment: Alignment.center,
          )
          ,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Home',icon: Icon(Icons.home)),
              Tab(text: 'Helps',icon: Icon(Icons.help)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomePage(),
            HelpPage()
          ],
        ),
      ),
    );
  }
}
