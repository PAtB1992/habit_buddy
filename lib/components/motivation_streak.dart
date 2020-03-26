import 'package:flutter/material.dart';
import 'package:habit_buddy/constants.dart';

class MotivationStreak extends StatefulWidget {
  @override
  _MotivationStreakState createState() => _MotivationStreakState();
}

class _MotivationStreakState extends State<MotivationStreak> {
  @override
//  TODO extensible list
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Motivation Level:',
          style: TextStyle(fontSize: 15),
        ),
        Icon(Icons.favorite, color: Colors.redAccent),
        Icon(Icons.favorite, color: Colors.redAccent),
        Icon(Icons.favorite, color: Colors.redAccent),
      ],
    );
  }
}
