import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:habit_buddy/constants.dart';
import 'package:habit_buddy/components/motivation_streak.dart';
import 'package:habit_buddy/components/emotes_button.dart';

class FriendCard extends StatelessWidget {
  FriendCard({@required this.friendAvatar, this.onPress, this.friendName});
  final String friendAvatar;
  final Function onPress;
  final String friendName;

  @override
  Widget build(BuildContext context) {
//    TODO remove gesture detector?
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              child: Image.asset('images/bot1.png'),
              backgroundColor: Colors.transparent,
              radius: 60,
            ),
            Text(
              'The Forbidden Flute',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
            MotivationStreak(),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 180,
              child: Divider(
                thickness: 0.6,
                indent: 5,
                endIndent: 5,
                color: Colors.lightBlueAccent,
              ),
            ),
            Text(
              'Heute fühlte sich dein Habit Buddy beim Erfüllen seiner Ziele nicht so gut.',
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Column(
                    children: <Widget>[
                      EmoteButtons(
                        onPressed: null,
                        title: 'Weiter so!',
                      ),
                      EmoteButtons(
                        onPressed: null,
                        title: 'Erinnere dich, warum du gestartet hast!',
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    children: <Widget>[
                      EmoteButtons(
                        onPressed: null,
                        title: 'Du motivierst mich!',
                      ),
                      EmoteButtons(
                        onPressed: null,
                        title: 'Gib jetzt nicht auf!',
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
