import 'package:byke/LoginRegisterPage.dart';
import 'package:flutter/material.dart';
import 'maps_list_page.dart';

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
              child: Text("LoginRegisterPage"),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new LoginRegisterPage(),
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
