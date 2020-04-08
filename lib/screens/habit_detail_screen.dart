import 'package:flutter/material.dart';
import 'package:habit_buddy/components/goal.dart';

class HabitDetailScreen extends StatefulWidget {
  static const String id = 'habit_detail_screen';
  HabitDetailScreen({Key key}) : super(key: key);

  @override
  _HabitDetailScreenState createState() => _HabitDetailScreenState();
}

class _HabitDetailScreenState extends State<HabitDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Goal goal = ModalRoute.of(context).settings.arguments;
    print(goal.name);
    return Scaffold(
      appBar: AppBar(
        title: Text(goal.name),
        actions: <Widget>[
          IconButton(
            icon: Icon(goal.goalIcon),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[
              // _buildHeaderRow(),
              Card(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text("Was auch immer du abfragen möchtest")
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text("Hier kommen irgendwelche Statistiken?")
                    ],
                  ),
                ),
              ),
              RaisedButton(
                  onPressed: () {}, child: Text('Wiederholung eintragen'))
            ],
          ),
        ),
      ),
    );
  }
}
