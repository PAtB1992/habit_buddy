import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EmoteButtons extends StatelessWidget {
  EmoteButtons(
      {@required this.title,
      @required this.onPressed,
      @required this.loggedInUser});

  final _firestore = Firestore.instance;
  FirebaseUser loggedInUser;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 5.0,
      padding: EdgeInsets.all(0),
      onPressed: () {
        _firestore
            .collection('messages')
            .add({'text': title, 'sender': loggedInUser.email});
        Navigator.pop(context);
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.lightBlueAccent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          constraints: BoxConstraints(maxWidth: 400, minHeight: 50),
          alignment: Alignment.center,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
