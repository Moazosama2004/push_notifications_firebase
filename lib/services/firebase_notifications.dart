import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:push_notifications_firebase/app.dart';

class FirebaseNotifications {
  // Create instance of FBM
  final _firebaseMessaging = FirebaseMessaging.instance;

  // Initalize notifications for this app or device
  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();
    String? token = await _firebaseMessaging.getToken();
    log('Token is : $token');
    handleBackgroundNotification();
  }

  // handle notifications when recieved
  void handleMessage(RemoteMessage? message) {
    if (message == null) return;
    navigatorKey.currentState!.pushNamed(
      '/notification_screen',
      arguments: message,
    );
  }

  // handle notifications in case of app is terminated
  Future handleBackgroundNotification() async {
    // terminated
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    // background
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}
