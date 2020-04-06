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
//        Navigator.pop(context);
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFFc5cae9), Color(0xFFc5cae9)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
          borderRadius: BorderRadius.circular(20),
        ),
        constraints: BoxConstraints(maxWidth: 120, minHeight: 45),
        alignment: Alignment.center,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xFF212121), fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
