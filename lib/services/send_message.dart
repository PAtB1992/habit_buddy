import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String messageText;
FirebaseUser loggedInUser;
final _firestore = Firestore.instance;
final _auth = FirebaseAuth.instance;

void sendMessage({messageText, loggedInUser}) {
  _firestore
      .collection('messages')
      .add({'text': messageText, 'sender': loggedInUser.email});
}
