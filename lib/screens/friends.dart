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
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text('Your Habit Buddies'),
      ),
      body: Column(
//        TODO Listview keine column
        children: <Widget>[
          Container(
            child: Text(
              'Share your experiences and motivate each other via emotes!',
              style: kFriendTextStyle,
            ),
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          ),
          FriendCard(
            friendAvatar: 'images/bot1.png',
            friendName: 'The Forbidden Flute',
          ),
          EmoteButtons(
            title: 'Gut gemacht!',
            color: Colors.blue[800],
            onPressed: null,
          ),
          Divider(
            height: 3,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
