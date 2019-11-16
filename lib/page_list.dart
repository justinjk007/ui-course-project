import 'package:flutter/material.dart';
import 'package:byke/LoginRegisterPage.dart';
import 'maps_list_page.dart';
import 'map_and_start_button.dart';
import 'others_and_me.dart';

class PageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Byke',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Byke'),
        ),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            RaisedButton(
              child: Text("maps_list_page"),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new MapsListPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("Login register"),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new LoginRegisterPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("map_and_start_button"),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new MapAndStartButton(
                      image: 'assets/map1.jpg',
                    ),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("others_and_me"),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new OthersAndMe(),
                  ),
                );
              },
            ),
          ], // List of buttons
        ),
      ),
    );
  }
}
