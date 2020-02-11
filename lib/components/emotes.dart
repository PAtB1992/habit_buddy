import 'package:flutter/material.dart';

class EmoteButtons extends StatelessWidget {
  EmoteButtons();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: <Widget>[
//          TODO in wrap widget
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                color: Colors.white70,
                padding: EdgeInsets.all(5),
                onPressed: () {},
                child: Text(
                  "Good job!",
                ),
              ),
              FlatButton(
                color: Colors.white70,
                padding: EdgeInsets.all(5),
                onPressed: () {},
                child: Text(
                  "Good job!",
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                color: Colors.white70,
                padding: EdgeInsets.all(5),
                onPressed: () {},
                child: Text(
                  "Good job!",
                ),
              ),
              FlatButton(
                color: Colors.white70,
                padding: EdgeInsets.all(5),
                onPressed: () {},
                child: Text(
                  "Good job!",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
