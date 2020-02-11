import 'package:flutter/material.dart';
import 'package:habit_buddy/screens/example_habit.dart';
import 'screens/start_screen.dart';
import 'screens/friends.dart';
import 'screens/example_habit.dart';

void main() => runApp(HabitBuddy());

class HabitBuddy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Habit Buddy',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: StartScreen.id,
        routes: {
          Friends.id: (context) => Friends(),
          ExampleHabit.id: (context) => ExampleHabit(),
        });
  }
}
