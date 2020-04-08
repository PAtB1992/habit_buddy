import 'package:flutter/material.dart';
import 'package:habit_buddy/Widgets/goals_list.dart';
import 'package:habit_buddy/services/notifications_service.dart';
import 'package:provider/provider.dart';
import 'package:habit_buddy/components/goal_data.dart';
import 'package:habit_buddy/screens/add_habit_screen.dart';
import 'package:habit_buddy/components/reusable_card.dart';
import 'package:habit_buddy/constants.dart';
import 'package:habit_buddy/screens/habit_screen.dart';
import 'package:habit_buddy/screens/habit_buddy_screen.dart';
import 'package:habit_buddy/services/notifications_service.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    NotificationsService().initialise();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFF4081),
        onPressed: () {
//          Provider.of<GoalData>(context, listen: false).addGoal('Test');
          Navigator.pushNamed(
            context,
            AddHabit.id,
          );
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
//          Header
          Container(
            color: Color(0xFF303F9F),
            padding: EdgeInsets.only(top: 60.0, bottom: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.child_care,
                    size: 30.0,
                    color: Color(0xFFFF4081),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              ReusableCard(
                color1: Color(0xFFFF4081),
                color2: Color(0xFFFF4081),
                onPress: () {
                  Navigator.pushNamed(context, HabitBuddyScreen.id);
                },
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Motiviere Dich und Deinen Habit Buddy!',
                      style: TextStyle(color: Colors.white),
                    ),
                    Hero(
                      tag: 'icon',
                      child: Icon(
                        Icons.child_care,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
            color: Colors.white,
            child: Text(
              'Derzeit verfolgst Du ${Provider.of<GoalData>(context).goalCount} Ziele, bleib dran und wachse an Dir!',
              style: TextStyle(
                color: Color(0xFF212121),
              ),
            ),
          ),
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
