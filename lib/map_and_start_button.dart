import 'package:flutter/material.dart';
import 'package:flutter_timer/flutter_timer.dart';

class MapAndStartButton extends StatefulWidget {
  MapAndStartButton({
    Key key,
    this.title,
    this.image,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  _MapAndStartButtonState createState() => _MapAndStartButtonState();
}

class _MapAndStartButtonState extends State<MapAndStartButton> {
  bool running = false;
  bool timer_visibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Start the race"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20), // Empty box as padding
          Center(
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(20),
              child: Image.asset(
                widget.image,
                height: MediaQuery.of(context).size.height /
                    1.5, //reduce the size of the image
              ),
            ),
          ),
          SizedBox(height: 10), // Empty box as padding
          Visibility(
            visible: timer_visibility,
            child: GestureDetector(
              // This is timer widget made into a button, when clicked the timer will stop
              onTap: () {
                timer_visibility = false;
                try {
                  if (running == true)
                    setState(() {
                      running = false;
                    });
                } on Exception {}
              },
              child: TikTikTimer(
                initialDate: DateTime.now(),
                running: running,
                height: 50,
                width: MediaQuery.of(context).size.width - 30,
                backgroundColor: Colors.blue,
                timerTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                isRaised: true,
              ),
            ),
            replacement: ButtonTheme(
              // This is the start button on top of the timer widget
              minWidth: MediaQuery.of(context).size.width - 30,
              height: 50,
              child: RaisedButton(
                textColor: Colors.white,
                child: Text("START"),
                onPressed: () {
                  timer_visibility = true;
                  try {
                    if (running == false)
                      setState(() {
                        running = true;
                      });
                  } on Exception {}
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
