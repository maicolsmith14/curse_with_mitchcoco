import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../utilities/deudores.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

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
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final db = FirebaseFirestore.instance;

  DeudoresModel? deudores;

  void leerDeudores () {
    final docRef = db.collection("deudores").doc("26619920");
    docRef.snapshots().listen(
      (event) {
        setState(() {
          deudores = DeudoresModel.fromJson(event.data()!);
        });
        inspect(deudores);
      },
      onError: (error) => print("Listen failed: $error"),
    );
  }

  @override
  initState(){
    super.initState();
    leerDeudores();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.home, size: 50,),
          Text("${deudores?.nombre}", style: TextStyle(fontSize: (MediaQuery.of(context).size.height)*0.05 , fontWeight: FontWeight.bold),),
          SizedBox(width: MediaQuery.of(context).size.width,)
        ],

        
      ),
    );
  }
}