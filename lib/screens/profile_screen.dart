import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:habit_buddy/components/motivation_streak.dart';
import 'package:habit_buddy/components/reusable_card.dart';
import 'package:habit_buddy/components/rounded_button.dart';
import 'package:habit_buddy/screens/send_message_screen.dart';
import 'package:habit_buddy/components/emotes_button.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ReusableCard(
        color1: Color(0xFF303f9f),
        color2: Color(0xFF3f51b5),
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color(0xFFff4081),
                  child: Image.asset('images/bot2.png'),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Dabieder',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Divider(
              color: Color(0xFFBDBDBD),
            ),
            Row(
              children: <Widget>[
//                TODO Buddy Zustandstext muss sich anpassen
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      text: 'Dein Habit Buddy fühlt sich derzeit etwas ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'unmotiviert',
                          style: TextStyle(
                            color: Color(0xFFFF4081),
                          ),
                        ),
                        TextSpan(
                          text: ', vielleicht kannst Du ihm helfen!',
                        ),
                      ],
                    ),
                  ),
                ),
                Tooltip(
                    message:
                        'Wenn es deinem Habit Buddy schlecht geht, hilft es vielleicht ihm eine Nachricht zu schicken oder manchmal reicht es auch schon aus selbst am Ball zu bleiben. Es gibt viele Menschen die durch die Taten anderer motiviert bleiben, so könnt ihr alle voneinander profitieren. Ist das nicht klasse? Übrigens, hast du schon mal versucht nach links zu swipen? ',
                    margin: EdgeInsets.only(left: 15, right: 15),
                    padding: EdgeInsets.all(5),
                    showDuration: Duration(hours: 1),
                    textStyle: TextStyle(
                      color: Color(0xFFFFFFFF),
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xFF757575),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              direction: Axis.horizontal,
              runSpacing: 6,
              spacing: 6,
              children: <Widget>[
                EmoteButtons(
                  loggedInUser: loggedInUser,
                  title: 'Gut, weiter so!',
                ),
                EmoteButtons(
                  loggedInUser: loggedInUser,
                  title: 'Gib jetzt nicht auf!',
                ),
                EmoteButtons(
                  loggedInUser: loggedInUser,
                  title: 'Versuchen wir es durchzuziehen.',
                ),
                EmoteButtons(
                  loggedInUser: loggedInUser,
                  title: 'Ich mag Züge',
                ),
                EmoteButtons(
                  loggedInUser: loggedInUser,
                  title: 'Wer das liest ist doof',
                ),
                EmoteButtons(
                  loggedInUser: loggedInUser,
                  title: 'Test',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Motivation Streak:',
                  style: TextStyle(color: Colors.white),
                ),
                MotivationStreak(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
