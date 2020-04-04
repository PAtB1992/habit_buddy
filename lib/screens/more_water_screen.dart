import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:habit_buddy/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:habit_buddy/components/goal_data.dart';
import 'package:habit_buddy/services/get_habit_template.dart';

class MoreWater extends StatelessWidget {
  static const String id = 'more_water_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
                'Tolle Beschreibung warum Wasser wichtig ist und wie die Habit aufgebaut ist blabla'),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () async {
                var habitTemplate =
                    await getHabitTemplate('mehr-wasser-trinken');
//                print(habitTemplate);
                Provider.of<GoalData>(context, listen: false)
                    .addGoal(habitTemplate[0], habitTemplate[1]);
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
