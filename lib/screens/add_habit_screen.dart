import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habit_buddy/components/habit_selection_card.dart';
import 'package:provider/provider.dart';
import 'package:habit_buddy/components/goal_data.dart';
import 'package:habit_buddy/screens/more_water_screen.dart';

class AddHabit extends StatelessWidget {
  static const String id = 'add_habit_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: 'Verbessere ',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Dein ', style: TextStyle(color: Colors.redAccent)),
                  TextSpan(
                    text: 'Leben',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Habits, oder zu Deutsch Gewohnheiten, sind Dinge im Alltag, die man unbewusst erledigt. Zähneputzen gehört zum Beispiel dazu. Sie helfen und blablabla weil blabla, wusstest du das schon? Blabla.. Suche Dir also eine von diesen Habits aus, welche Dein Leben bereichern würden.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.lightBlue,
              ),
            ),
            Flexible(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  HabitSelectionCard(
                    color: Colors.lightBlue[200],
                    onPress: () {
                      Navigator.pushNamed(context, MoreWater.id);
                    },
                    habitIcon: Icons.invert_colors,
                    cardText: 'Ich möchte mehr Wasser trinken.',
                  ),
                  HabitSelectionCard(
                    color: Colors.lightBlue[300],
                    habitIcon: Icons.favorite_border,
                    cardText: 'Ich möchte mich gesünder ernähren.',
                  ),
                  HabitSelectionCard(
                    color: Colors.lightBlue[400],
                    habitIcon: Icons.child_friendly,
                    cardText: 'Ich möchte weniger Fleisch essen.',
                  ),
                  HabitSelectionCard(
                    color: Colors.lightBlue[500],
                    habitIcon: Icons.school,
                    cardText: 'Ich möchte diese Masterarbeit beenden.',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
