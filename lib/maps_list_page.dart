import 'package:byke/home_page.dart';
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
    var _curIndex = 0;
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
                  bottomNavigationBar: BottomNavigationBar(// this will be set when a new tab is tapped
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.view_list),
                title: new Text('Trails'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Explore')
              )
            ],
            currentIndex: _curIndex = 0,
        onTap: (index) {
          setState(() {
            _curIndex = index;
            switch (_curIndex) {
              case 0:
              
                break;
              case 1:
              Navigator.pushReplacement(
                  context,
                  new MaterialPageRoute(
                    settings: RouteSettings(isInitialRoute: true),
                    builder: (context) => new HomePage(),
                  ),
                );
                break;
              case 2:
                Navigator.pushReplacement(
                  context,
                  new MaterialPageRoute(
                    settings: RouteSettings(isInitialRoute: true),
                    builder: (context) => new HomePage(),
                  ),
                );
            }
          });
        }

        ),
    );
  }
}
