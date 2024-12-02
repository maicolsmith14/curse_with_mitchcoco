import 'dart:developer';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const List<String> lista = [
    'Maicol',
    'Erika',
    'Matias',
    'Maira',
    'Maigualida',
    'Gerardo',
    'Mariangel',
    'Maicol',
    'Erika',
    'Matias',
    'Maira',
    'Maigualida',
    'Gerardo',
    'Mariangel',
    'Maicol',
    'Erika',
    'Matias',
    'Maira',
    'Maigualida',
    'Gerardo',
    'Mariangel',
  ];

  @override
  Widget build(BuildContext context) {
    inspect(MediaQuery.of(context));
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.home, size: 50,),
          Text("Home page", style: TextStyle(fontSize: (MediaQuery.of(context).size.height)*0.05 , fontWeight: FontWeight.bold),),
          SizedBox(width: MediaQuery.of(context).size.width,)
        ],
      ),
    );
  }
}