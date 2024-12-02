import 'package:curse_with_mitchcoco/pages/home_page.dart';
import 'package:curse_with_mitchcoco/pages/profile_page.dart';
import 'package:curse_with_mitchcoco/pages/settings_page.dart';
import 'package:curse_with_mitchcoco/pages/to_do_page.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoPage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
        '/profilepage': (context) => ProfilePage(),
      },
    );
  }
}