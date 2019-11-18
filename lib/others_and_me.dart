import 'package:flutter/material.dart';
import 'home_page.dart';
import 'maps_list_page.dart';

class OthersAndMe extends StatefulWidget {
  OthersAndMe({
    Key key,
  }) : super(key: key);
  @override
  OthersAndMeState createState() => OthersAndMeState();
}

class OthersAndMeState extends State<OthersAndMe> {
  @override
  Widget build(BuildContext context) {
    void _showUserDialog() {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: Text("Marques"),
            content: Text(
                "400 meters away\n\nGained 400 points last week\n\nLevel 5 active user"),
            actions: <Widget>[
              // Usually buttons at the bottom of the dialog
              FlatButton(
                child: Text(
                  "Close",
                ),
                onPressed: () {
                  // Exit out of the window
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(width: 10), // Add a little bit of padding after
            ], // Actions ends here
          );
        },
      );
    }

    var _curIndex = 2;
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text('Others and you'),
            ),
            body: GestureDetector(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage("assets/others_and_me.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              
              onTap: _showUserDialog,
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
              Navigator.pushReplacement(
                  context,
                  new MaterialPageRoute(
                    settings: RouteSettings(isInitialRoute: true),
                    builder: (context) => new HomePage(),
                  ),
                );
                break;
              case 2:
                break;
            }
          });
        }

        ),
      ),
    );
  }
}
