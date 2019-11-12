import 'package:flutter/material.dart';
import 'maps_list_widget.dart';

class MapsListPage extends StatefulWidget {
  MapsListPage({
    Key key,
  }) : super(key: key);
  @override
  _MapsListPageState createState() => _MapsListPageState();
}

class _MapsListPageState extends State<MapsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maps list page"),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          MapsListWidget(),
        ], // List
      ),
    );
  }
}
