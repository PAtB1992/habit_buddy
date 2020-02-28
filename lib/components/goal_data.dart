import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:habit_buddy/components/goal.dart';

//List of all goals provided with provider to be accessible for everyone

class GoalData extends ChangeNotifier {
  List<Goal> _goals = [
    Goal(name: 'Mastering the flute'),
    Goal(name: 'Practice Stoneskipping'),
  ];

//Enables to work with parameter "goals" without having to write "_goals"
  UnmodifiableListView<Goal> get goals {
    return UnmodifiableListView(_goals);
  }

//Returns the number of all goals in the list
  int get goalCount {
    return _goals.length;
  }

//Adds a new goal to the list
  void addGoal(String newGoalTitle) {
    final goal = Goal(name: newGoalTitle);
    _goals.add(goal);
    notifyListeners();
  }
}
