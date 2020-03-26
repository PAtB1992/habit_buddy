import 'package:flutter/material.dart';
import 'package:habit_buddy/components/friend_card.dart';
import 'package:habit_buddy/components/motivation_streak.dart';
import 'package:habit_buddy/components/reusable_card.dart';
import 'package:habit_buddy/constants.dart';
import 'package:habit_buddy/components/emotes_button.dart';

class Friends extends StatelessWidget {
  static const String id = 'friends';

  @override
  Widget build(buildContext) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
//          Header
          Container(
            color: Colors.lightBlue,
            padding: EdgeInsets.only(
                top: 35.0, left: 30.0, right: 30.0, bottom: 15.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  child: Hero(
                    tag: 'icon',
                    child: Icon(
                      Icons.child_care,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.redAccent,
                  radius: 30.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Deine Habit Buddies',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              FriendCard(),
            ],
          ),
        ],
      ),
    );
  }
}
