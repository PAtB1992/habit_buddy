import 'package:flutter/material.dart';
import 'package:habit_buddy/Widgets/habit_buddy_chart.dart';
import 'package:habit_buddy/components/reusable_card.dart';

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ReusableCard(
        color1: Color(0xFF303f9f),
        color2: Color(0xFF3f51b5),
        cardChild: Column(
          children: <Widget>[
            Flexible(child: SimpleLineChart.withRandomData()),
            Text(
              'Dabieder hat schon 18 mal am Stück sein Tagesziel erreicht!',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
