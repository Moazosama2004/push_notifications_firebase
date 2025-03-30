import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:push_notifications_firebase/app.dart';
import 'package:push_notifications_firebase/firebase_options.dart';
import 'package:push_notifications_firebase/services/firebase_notifications.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseNotifications().initNotification();
  runApp(const MyApp());
}
