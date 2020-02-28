import 'package:flutter/material.dart';

class Goal {
  final String name;
  bool isDone;
  int repetitions;
  final IconData goalIcon;

//  TODO Symbol für Goal hinzufügen

  Goal({this.name, this.isDone = false, this.repetitions = 0, this.goalIcon});
}
