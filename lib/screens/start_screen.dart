import 'package:flutter/material.dart';
import 'package:habit_buddy/components/reusable_card.dart';
import 'package:habit_buddy/constants.dart';
import 'package:habit_buddy/screens/example_habit.dart';
import 'package:habit_buddy/screens/friends.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(
          'Habit Buddy',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
        ),
      ),
      body: Column(
//        TODO: add function "new habit"

        children: <Widget>[
          ReusableCard(
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Friends(),
                ),
              );
            },
            color: Colors.blue[800],
            cardChild: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('My Habit Buddies'),
            ),
          ),
          Expanded(
//            TODO: add symbols and progress
            child: ReusableCard(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExampleHabit(),
                  ),
                );
              },
              color: Colors.blue[800],
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Improve my drawing',
                      style: kLabelTextStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Progress'),
                      Image.asset('images/artbook.png'),
                      Text('Today entered Data')
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: Colors.blue[800],
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Master the flute',
                      style: kLabelTextStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Progress'),
                      Image.asset('images/flute.png'),
                      Text('Today entered Data')
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
