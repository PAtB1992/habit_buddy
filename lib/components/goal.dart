import 'package:flutter/material.dart';

class Goal {
  final String name;
  final String description;
  bool isDone;
  int repetitions;
  final IconData goalIcon;

  Goal(
      {this.name,
      this.description,
      this.isDone = false,
      this.repetitions = 0,
      this.goalIcon});
}
