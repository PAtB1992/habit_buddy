import 'package:flutter/material.dart';
import 'package:habit_buddy/screens/habit_detail_screen.dart';
import 'package:provider/provider.dart';
import 'package:habit_buddy/components/goal_data.dart';
import 'package:habit_buddy/components/goal_tile.dart';

class GoalsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<GoalData>(
      builder: (context, goalData, child) {
        return ListView.builder(
          padding: EdgeInsets.all(0),
          itemBuilder: (context, index) {
            final goal = goalData.goals[index];
            return GoalTile(
              goalTitle: goal.name,
              repetitions: goal.repetitions,
              goalIcon: goal.goalIcon,
              onPress: () {
                Navigator.pushNamed(context, HabitDetailScreen.id,
                    arguments: goal);
              },
            );
          },
          itemCount: goalData.goalCount,
        );
      },
    );
  }
}
