import 'package:flutter/material.dart';
import 'package:habit_buddy/components/reusable_card.dart';
import 'package:habit_buddy/screens/example_habit.dart';

class ExampleHabit extends StatelessWidget {
  static const String id = 'example_habit';

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
    );
  }
}
