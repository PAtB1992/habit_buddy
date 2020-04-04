import 'package:flutter/material.dart';

class GoalTile extends StatelessWidget {
  final String goalTitle;
  final Function onPress;
  final int repetitions;
  final IconData goalIcon;

  GoalTile({this.goalTitle, this.onPress, this.repetitions, this.goalIcon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text(
              goalTitle,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Wiederholungen: $repetitions',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  goalIcon,
                  color: Colors.white,
                  size: 60.0,
                ),
                Text(
                  'Statistik',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Color(0xFF3F51b5),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
