import 'package:flutter/material.dart';

class EmoteButtons extends StatelessWidget {
  EmoteButtons({this.title, this.color, @required this.onPressed});

  final Color color;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
      child: RaisedButton(
        padding: EdgeInsets.all(0),
        onPressed: null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80),
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.lightBlueAccent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            constraints: BoxConstraints(maxWidth: 200, minHeight: 50),
            alignment: Alignment.center,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ),
    );
  }
}
