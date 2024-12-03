import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curse_with_mitchcoco/models/deudores.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final FirebaseFirestore db = FirebaseFirestore.instance;
  final Stream<QuerySnapshot> deudoresStream = FirebaseFirestore.instance.collection('deudores').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, bottom: 16.0),
                  child: Text(
                    "Deudores",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                TextButton.icon(
                  label: const Text(
                    "Agregar",
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: Colors.grey[50],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: double.infinity, height: 16),
                    StreamBuilder<QuerySnapshot>(
                      stream: deudoresStream,
                      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return const Text('Hubo un error al obtener los deudores');
                        }
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return const Text("Cargando deudores");
                        }
                        return ListView(
                          shrinkWrap: true,
                          children: snapshot.data!.docs.map((DocumentSnapshot document) {
                            Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
                            Deudores deudor = Deudores.fromJson(data);
                            return Card(
                              margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                              color: Colors.white,
                              elevation: 0.0,
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://ui-avatars.com/api/?name=${deudor.nombre} ${deudor.apellido}&background=0D8ABC&color=fff"),
                                ),
                                title: Text(
                                  "${deudor.nombre} ${deudor.apellido}",
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(deudor.telefono ?? "Sin teléfono"),
                                trailing: IconButton(
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            );
                          }).toList(),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
