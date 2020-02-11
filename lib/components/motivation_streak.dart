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
      children: <Widget>[
        Icon(Icons.favorite, color: Colors.pink),
        Icon(Icons.favorite, color: Colors.pink),
        Icon(Icons.favorite, color: Colors.pink),
        Text(
          'Motivation streak!',
          style: kFriendTextStyle,
        )
      ],
    );
  }
}
