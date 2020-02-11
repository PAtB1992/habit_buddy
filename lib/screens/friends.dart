import 'package:flutter/material.dart';
import 'package:habit_buddy/components/friend_card.dart';
import 'package:habit_buddy/components/motivation_streak.dart';
import 'package:habit_buddy/components/reusable_card.dart';
import 'package:habit_buddy/constants.dart';
import 'package:habit_buddy/components/emotes.dart';

class Friends extends StatelessWidget {
  Friends();

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
          EmoteButtons(),
          Divider(
            height: 3,
            color: Colors.white,
          ),
          FriendCard(
            friendAvatar: 'images/bot2.png',
            friendName: 'The Brain Art',
          ),
          EmoteButtons(),
          Divider(
            height: 3,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
