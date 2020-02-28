import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:habit_buddy/components/goal_data.dart';

class AddHabit extends StatelessWidget {
  static const String id = 'add_habit_screen';
  String newGoalTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          children: <Widget>[
            Text(
              'Add Goal',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newGoalTitle = newText;
              },
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<GoalData>(context, listen: false)
                    .addGoal(newGoalTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
