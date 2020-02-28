import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:habit_buddy/components/goal_data.dart';
import 'package:habit_buddy/components/goal_tile.dart';

class GoalsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<GoalData>(
      builder: (context, goalData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final goal = goalData.goals[index];
            return GoalTile(
              goalTitle: goal.name,
            );
          },
          itemCount: goalData.goalCount,
        );
      },
    );
  }
}
