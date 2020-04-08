import 'package:firebase_messaging/firebase_messaging.dart';
import 'dart:io';

import 'package:flutter/material.dart';

class NotificationsService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  void initialise() {
    if (Platform.isIOS) {
      // request permissions if platform is IOS
      _firebaseMessaging
          .requestNotificationPermissions(IosNotificationSettings());
    }
    _firebaseMessaging.configure(
      // Called when the app is in the foreground and we receive a push notification.
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
      },
      // Called when the app has been closed completely and it' opened
      // from the push notification directly.
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
      // Called when the app is in the background and it's opened
      // from the push notification
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );
  }
}

//  Future initialise() async {
//    if (Platform.isIOS) {
//      // request permissions if platform is IOS
//      _firebaseMessaging
//          .requestNotificationPermissions(IosNotificationSettings());
//    }
