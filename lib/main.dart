import 'package:flutter/material.dart';
import 'package:habit_buddy/screens/add_habit_screen.dart';
import 'package:habit_buddy/screens/habit_screen.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/friends.dart';
import 'screens/habit_screen.dart';
import 'components/goal_data.dart';
import 'screens/add_habit_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/login_screen.dart';

void main() => runApp(HabitBuddy());

class HabitBuddy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoalData(),
      child: MaterialApp(
          title: 'Habit Buddy',
          initialRoute: WelcomeScreen.id,
          routes: {
            WelcomeScreen.id: (context) => WelcomeScreen(),
            LoginScreen.id: (context) => LoginScreen(),
            RegistrationScreen.id: (context) => RegistrationScreen(),
            HomeScreen.id: (context) => HomeScreen(),
            Friends.id: (context) => Friends(),
            ExampleHabit.id: (context) => ExampleHabit(),
            AddHabit.id: (context) => AddHabit(),
          }),
    );
  }
}
