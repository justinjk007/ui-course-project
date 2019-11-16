import 'package:flutter/material.dart';

class MapsListWidget extends StatefulWidget {
  MapsListWidget({
    Key key,
    this.title,
    this.content,
    this.image,
    this.height,
    this.onTap,
  }) : super(key: key);

  final String title;
  final Widget content;
  final String image;
  final double height;
  final Function onTap;

  @override
  _MapsListWidgetState createState() => _MapsListWidgetState();
}

class _MapsListWidgetState extends State<MapsListWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: widget.height,
        child: InkWell(
          onTap: widget.onTap,  //whatever function was passed to this
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(widget.image),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textScaleFactor: 1.5,
                    ),
                    widget.content, // content is a widget, usually a Text widget
                  ],
                ),
              ),
            ], // End of list
          ),
        ),
      ),
    );
  }
}
