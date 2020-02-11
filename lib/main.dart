import 'package:flutter/material.dart';
import 'screens/start_screen.dart';

void main() => runApp(HabitBuddy());

class HabitBuddy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habit Buddy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartScreen(),
    );
  }
}
