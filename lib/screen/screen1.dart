import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

int aim = 0;

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: (Colors.white),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Center(
                  child: Text(
                    'Pramod',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text('Item 1'),
              ),
              ListTile(
                title: Text('Item 2'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.teal[600],
          title: Text('WhatsApp',
              style: TextStyle(
                color: Colors.white,
              )),
          // leading:Icon(Icon.mail),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
            IconButton(icon: Icon(Icons.message), onPressed: () {}),
          ],
        ),
        body: Container(
          child: Column(
            children: [],
          ),
        ));
  }
}
