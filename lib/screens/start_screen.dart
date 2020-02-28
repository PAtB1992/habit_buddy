import 'package:flutter/material.dart';
import 'package:habit_buddy/Widgets/goals_list.dart';
import 'package:provider/provider.dart';
import 'package:habit_buddy/components/goal_data.dart';
import 'package:habit_buddy/screens/add_habit_screen.dart';
import 'package:habit_buddy/components/reusable_card.dart';
import 'package:habit_buddy/constants.dart';
import 'package:habit_buddy/screens/habit_screen.dart';
import 'package:habit_buddy/screens/friends.dart';

class StartScreen extends StatefulWidget {
  static const String id = 'start_screen';
  @override
  _StartScreenState createState() => _StartScreenState();
}

//TODO use hero animation for buddy icon
class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
//          Provider.of<GoalData>(context, listen: false).addGoal('Test');
          Navigator.pushNamed(
            context,
            AddHabit.id,
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
//          Header
          Container(
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.child_care,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Habit Buddy',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.white,
            child: Text(
                'Derzeit verfolgst Du ${Provider.of<GoalData>(context).goalCount} Ziele, bleib dran!'),
          ),
//          ReusableCard(
//            onPress: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(
//                  builder: (context) => Friends(),
//                ),
//              );
//            },
//            color: Colors.blue[800],
//            cardChild: Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: Text('My Habit Buddies'),
//            ),
//          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: GoalsList(),
            ),
          ),
        ],
      ),
    );
  }
}
