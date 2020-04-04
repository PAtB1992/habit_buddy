import 'package:flutter/material.dart';
import 'package:habit_buddy/components/reusable_card.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ReusableCard(
        color: Color(0xFF303f9f),
        cardChild: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color(0xFFff4081),
                  child: Image.asset('images/bot2.png'),
                ),
                Text(
                  'Dabieder',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
