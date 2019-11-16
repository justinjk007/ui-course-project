import 'package:flutter/material.dart';

class OthersAndMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showUserDialog() {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: Text("mark49"),
            // content: Text("This will reset all the activity status of "
            //     "all weeks, this means you are starting a new 4 week streak..."),
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
      ),
    );
  }
}
