import 'package:flutter/material.dart';
import 'package:habit_buddy/screens/add_habit_screen.dart';
import 'package:habit_buddy/screens/habit_screen.dart';
import 'package:provider/provider.dart';
import 'screens/start_screen.dart';
import 'screens/friends.dart';
import 'screens/habit_screen.dart';
import 'components/goal_data.dart';
import 'screens/add_habit_screen.dart';

void main() => runApp(HabitBuddy());

class HabitBuddy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoalData(),
      child: MaterialApp(
          title: 'Habit Buddy',
          initialRoute: StartScreen.id,
          routes: {
            StartScreen.id: (context) => StartScreen(),
            Friends.id: (context) => Friends(),
            ExampleHabit.id: (context) => ExampleHabit(),
            AddHabit.id: (context) => AddHabit(),
          }),
    );
  }
}
