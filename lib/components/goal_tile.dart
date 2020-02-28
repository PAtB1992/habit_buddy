import 'package:flutter/material.dart';

class GoalTile extends StatelessWidget {
  final String goalTitle;
  final Function onPress;

  GoalTile({this.goalTitle, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Text(
              goalTitle,
              style: TextStyle(color: Colors.white, fontSize: 17.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Fortschritt'),
                Text('Symbol'),
                Text('Statistik'),
              ],
            ),
          ],
        ),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
