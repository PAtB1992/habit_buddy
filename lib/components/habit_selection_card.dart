import 'package:flutter/material.dart';

class HabitSelectionCard extends StatelessWidget {
  HabitSelectionCard({this.color, this.cardText, this.onPress, this.habitIcon});
  final Color color;
  final String cardText;
  final Function onPress;
  final IconData habitIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment(0, 0),
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              habitIcon,
              size: 40,
              color: Colors.white,
            ),
            Text(
              cardText,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
