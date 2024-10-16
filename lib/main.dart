import 'package:app/pages/sections/chat_with_michael.dart';
import 'package:app/pages/sections/chat_with_william.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/chattingPage.dart';
import 'package:app/pages/createGroupPage.dart';
import 'package:app/pages/homePage.dart';
import 'package:app/pages/profilePage.dart';
import 'package:app/pages/reminderPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        "/home": (context) => HomePage(),
        "/chatting": (context) => ChattingPage(),
        "/createGroup": (context) => CreateGroupPage(),
        "/profile": (context) => ProfilePage(),
        "/reminder": (context) => ReminderPage(),
        "/michael": (context) => ChatsMidget(),
        "/william": (context) => ChatsWidget(),
      },
    );
  }
}
