import 'package:byke/maps_list_page.dart';
import 'package:byke/others_and_me.dart';
import 'package:flutter/material.dart';
import 'map_and_start_button.dart';
import 'maps_list_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key key,
  }) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
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
    var _curIndex = 1;
    return new Scaffold(
      appBar: new AppBar(title: new Text("Byke", textAlign: TextAlign.center)),
      body: new Container(
          child: ListView(
        children: <Widget>[
          CustomCard(),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "Recently Completed:",
              style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Open Sans',
                  fontSize: 20),
            ),
          ),
          MapsListWidget(
            title: "Don Valley Trail",
            content: makeContent(
              "\nDistance: 500 meters\nCurrent record: 6 mins\nPoints Earned: 125\nDifficulty: hard\n",
              "★★★✩✩",
            ),
            height: 170,
            image: "assets/map3_crop.jpg",
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => new MapAndStartButton(
                    image: 'assets/map3.jpg',
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "Popular Nearby:",
              style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Open Sans',
                  fontSize: 20),
            ),
          ),
          MapsListWidget(
            title: "Ontario Tech Loop",
            height: 170,
            content: makeContent(
              "\nDistance: 700 meters\nCurrent record: 5 mins\nPoints Earned: 100\nDifficulty: medium\n",
              "★★★★✩",
            ),
            image: "assets/map1_crop.jpg",
            onTap: () {
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
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
          // this will be set when a new tab is tapped
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
                icon: Icon(Icons.search), title: Text('Explore'))
          ],
          currentIndex: _curIndex,
          onTap: (index) {
            setState(() {
              _curIndex = index;
              switch (_curIndex) {
                case 0:
                  Navigator.pushReplacement(
                    context,
                    new MaterialPageRoute(
                      settings: RouteSettings(isInitialRoute: true),
                      builder: (context) => new MapsListPage(),
                    ),
                  );
                  break;
                case 1:
                  break;
                case 2:
                  Navigator.pushReplacement(
                    context,
                    new MaterialPageRoute(
                      settings: RouteSettings(isInitialRoute: true),
                      builder: (context) => new OthersAndMe(),
                    ),
                  );
              }
            });
          }),
    );
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Stack(
        children: <Widget>[
          Card(
            child: Container(
              child: Center(
                child: ListView(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  children: <Widget>[
                    new CircleAvatar(
                      radius: 25.0,
                      child: Text("A"),
                    ),
                    Center(
                        child: Padding(
                      child: Center(
                          child: Text(
                        "Biking till I die!\nFriends: 50",
                        textAlign: TextAlign.center,
                      )),
                      padding: EdgeInsets.all(10),
                    )),
                  ],
                ),
              ),
              height: 120.0,
            ),
          ),
        ],
      ),
    );
  }
}
