import 'package:byke/maps_list_page.dart';
import 'package:flutter/material.dart';

import 'maps_list_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key key,
  }) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var _curIndex = 1;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Byke", textAlign: TextAlign.center)
      ),
      body: new Container(
        child:ListView(
          children: <Widget>[
            CustomCard(), 
            MapsListWidget(
              title: "OnTechU circle",
              content: Text("hello"),
              image: "assets/map1_crop.jpg",
            ),
          ],)
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
                    padding: EdgeInsets.all(10),
                    children: <Widget>[
                      new CircleAvatar(
                        radius: 25.0,
                        child: Image.asset("assets/profile.png"),
                      ),
                      Center(
                        child: Text("Friends: 50 | Level: 3"),)
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