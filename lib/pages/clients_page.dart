import 'package:flutter/material.dart';

class ClientsPage extends StatelessWidget {
  final List<String> clients = [
    "Riad ait CARTE GRAPHIQUE",
    "Riad CHOKRI",
    "Riad AKHMISS",
    "Riad JAMALI"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: clients.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text(clients[index]),
            subtitle: Text("Client fidèle"),
          ),
        );
      },
    );
  }
}
