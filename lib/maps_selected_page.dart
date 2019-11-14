import 'package:flutter/material.dart';
import 'package:expandable_card/expandable_card.dart';

class PageSelected extends StatefulWidget {
  PageSelected({
    Key key,
    this.image,
  }) : super(key: key);

  final String image;

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
            children: <Widget>[Text("Hello world")],
          ),
        ),
      ),
    );
  }
}
