import 'package:flutter/material.dart';

class MapsListWidget extends StatefulWidget {
  MapsListWidget({
    Key key,
  }) : super(key: key);
  @override
  _MapsListWidgetState createState() => _MapsListWidgetState();
}

class _MapsListWidgetState extends State<MapsListWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 130.0,
        child: InkWell(
          onTap: () {
            // do something
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('assets/map1.jpg', scale: 6),
              Text("title"),
            ], // End of list
          ),
        ),
      ),
    );
  }
}
