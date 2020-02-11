import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:habit_buddy/constants.dart';
import 'package:habit_buddy/components/motivation_streak.dart';

class FriendCard extends StatelessWidget {
  FriendCard({@required this.friendAvatar, this.onPress, this.friendName});
  final String friendAvatar;
  final Function onPress;
  final String friendName;

  @override
  Widget build(BuildContext context) {
//    TODO remove gesture detector?
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 0, 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          CircleAvatar(
            child: CircleAvatar(
              backgroundImage: AssetImage(friendAvatar),
              radius: 38,
            ),
            radius: 40,
            backgroundColor: Colors.white,
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(8.0, 8, 0, 8),
                child: Text(
                  friendName,
                  style: kLabelTextStyle,
                ),
                margin: EdgeInsets.fromLTRB(15.0, 15, 0, 0),
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Colors.white),
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              MotivationStreak(),
            ],
          ),
        ],
      ),
    );
  }
}
