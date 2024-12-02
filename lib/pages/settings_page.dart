import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.settings, size: 50,),
            Text("Settings page", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}