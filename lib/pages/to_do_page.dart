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
  List pages = [
    HomePage(),
    const SettingsPage(),
    const ProfilePage(),
  ];

  int _selectedIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
          title: const Text(
            "@invdiostodoestuyo",
          ),
          actions: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600",
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "H O M E"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "S E T T I N G S"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "P R O F I L E"),
          ],
        ),
      ),
    );
  }
}
