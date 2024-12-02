import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 50,),
            Text("Profile page", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}