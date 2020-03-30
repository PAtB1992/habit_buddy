import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;
String habitName;
List habitTemplate;

Future<List> getHabitTemplate(name) async {
  final template = await _firestore.collection('habits').getDocuments();
  for (var item in template.documents) {
    if (item.documentID == name) {
      habitTemplate = item.data.values.toList();
    }
  }
  return habitTemplate;
}
