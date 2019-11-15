import 'package:byke/LoginRegisterPage.dart';
import 'package:flutter/material.dart';
import 'maps_list_page.dart';
import 'maps_selected_page.dart';
import 'map_and_start_button.dart';

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
              child: Text("maps_selected_page"),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new PageSelected(),
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
          ], // List of buttons
        ),
      ),
    );
  }
}
