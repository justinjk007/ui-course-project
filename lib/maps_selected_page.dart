import 'package:flutter/material.dart';
import 'package:expandable_card/expandable_card.dart';

class PageSelected extends StatefulWidget {
  PageSelected({
    Key key,
    this.title,
    this.image,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  _PageSelectedState createState() => _PageSelectedState();
}

class _PageSelectedState extends State<PageSelected> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ExpandableCardPage(
          page: Center(
            child: Image.asset(
              widget.image,
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ),
          expandableCard: ExpandableCard(
            padding: EdgeInsets.all(0),
            minHeight: 100,
            backgroundColor: Colors.blue,
            children: <Widget>[
              Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
