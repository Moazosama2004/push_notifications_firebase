import 'package:flutter/material.dart';
import 'package:push_notifications_firebase/views/home_view.dart';
import 'package:push_notifications_firebase/views/notification_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomeView(),
        '/notification_screen': (context) => NotificationView(),
      },
      navigatorKey: navigatorKey,
    );
  }
}

final navigatorKey = GlobalKey<NavigatorState>();

