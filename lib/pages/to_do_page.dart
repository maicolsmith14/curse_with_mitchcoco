import 'package:curse_with_mitchcoco/pages/home_page.dart';
import 'package:curse_with_mitchcoco/pages/profile_page.dart';
import 'package:curse_with_mitchcoco/pages/settings_page.dart';
import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  List _pages = [
    HomePage(),
    SettingsPage(),
    ProfilePage(),
  ];

  int _selectedIndex = 0;

  void _selectPage (int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text(
          "Navigation practice",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "H O M E"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "S E T T I N G S"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "P R O F I L E"
          ),
        ],
      ),
    );
  }
}