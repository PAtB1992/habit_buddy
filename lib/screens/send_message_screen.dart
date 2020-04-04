import 'package:flutter/material.dart';
import 'package:habit_buddy/components/emotes_button.dart';
import 'package:habit_buddy/components/rounded_button.dart';
import 'package:habit_buddy/components/habit_selection_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//final _firestore = Firestore.instance;
FirebaseUser loggedInUser;

class SendMessageScreen extends StatefulWidget {
  static const String id = 'send_message_screen';

  @override
  _SendMessageScreenState createState() => _SendMessageScreenState();
}

class _SendMessageScreenState extends State<SendMessageScreen> {
  final _auth = FirebaseAuth.instance;

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
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            Flexible(
              child: GridView.count(
                childAspectRatio: 2.4,
                primary: false,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  EmoteButtons(
                    loggedInUser: loggedInUser,
                    title: 'Gut, weiter so!',
                  ),
                  EmoteButtons(
                    loggedInUser: loggedInUser,
                    title: 'Gib jetzt nicht auf!',
                  ),
                  EmoteButtons(
                    loggedInUser: loggedInUser,
                    title: 'Versuchen wir es durchzuziehen.',
                  ),
                  EmoteButtons(
                    loggedInUser: loggedInUser,
                    title: 'Ich mag Züge',
                  ),
                  EmoteButtons(
                    loggedInUser: loggedInUser,
                    title: 'Wer das liest ist doof',
                  ),
                  EmoteButtons(
                    loggedInUser: loggedInUser,
                    title: 'Test',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
