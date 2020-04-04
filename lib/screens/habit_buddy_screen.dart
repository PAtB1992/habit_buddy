import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:habit_buddy/components/rounded_button.dart';
import 'package:habit_buddy/components/friend_card.dart';
import 'package:habit_buddy/components/motivation_streak.dart';
import 'package:habit_buddy/components/reusable_card.dart';
import 'package:habit_buddy/constants.dart';
import 'package:habit_buddy/components/emotes_button.dart';
import 'package:habit_buddy/screens/profile_screen.dart';
import 'package:habit_buddy/screens/send_message_screen.dart';
import 'package:habit_buddy/services/display_messages.dart';
import 'package:habit_buddy/screens/chart_screen.dart';

//TODO: Beim ersten Start funktioniert die Chat Darstellung nicht!

class HabitBuddyScreen extends StatefulWidget {
  static const String id = 'habit_buddy_screen';

  @override
  _HabitBuddyScreenState createState() => _HabitBuddyScreenState();
}

class _HabitBuddyScreenState extends State<HabitBuddyScreen> {
  final _auth = FirebaseAuth.instance;
  final controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Dein Habit Buddy',
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  child: Hero(
                    tag: 'icon',
                    child: Icon(
                      Icons.child_care,
                      size: 30.0,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  backgroundColor: Color(0xFFFF4081),
                  radius: 25.0,
                ),
                SizedBox(
                  width: 15,
                )
              ],
            ),
            Container(
              height: 250,
              child: PageView(
                controller: controller,
                children: <Widget>[
                  ProfileScreen(),
                  ChartScreen(),
                ],
              ),
            ),
            MessagesStream(
              loggedInUser: loggedInUser,
            ),
            ReusableCard(
              onPress: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    child: SendMessageScreen(),
                  ),
                );
              },
              color: Color(0xFFFF4081),
              cardChild: Text(
                'Schicke deinem Habit Buddy eine Nachricht.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
