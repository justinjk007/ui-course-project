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
  // TODO: Add hero animation from this page
  // TODO: use https://pub.dev/packages/expandable_card
  Widget makeContent(String main, String stars) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(main),
        Text(
          stars,
          style: TextStyle(color: Colors.yellow[800]),
          textScaleFactor: 1.5,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maps list page"),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          MapsListWidget(
            title: "OnTechU circle",
            content: makeContent(
              "\nDistance: 700 meters\nCurrent record: 5 mins\nPoints Earned: 100\nDifficulty: medium\n",
              "★★★★✩",
            ),
            image: "assets/map1_crop.jpg",
            // onTap:
          ),
          MapsListWidget(
            title: "7 Stretch",
            content: makeContent(
              "\nDistance: 730 meters\nCurrent record: 3.5 mins\nPoints Earned: 80\nDifficulty: easy\n",
              "★★★★★",
            ),
            image: "assets/map2_crop.jpg",
            // onTap:
          ),
          MapsListWidget(
            title: "That road",
            content: makeContent(
              "\nDistance: 500 meters\nCurrent record: 6 mins\nPoints Earned: 125\nDifficulty: hard\n",
              "★★★✩✩",
            ),
            image: "assets/map3_crop.jpg",
            // onTap:
          ),
        ], // List
      ),
    );
  }
}
