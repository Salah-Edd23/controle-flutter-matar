import 'package:flutter/material.dart';

class CommandesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            leading: Icon(Icons.receipt),
            title: Text("Commande #1021"),
            subtitle: Text("Montant: 350 DH"),
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            leading: Icon(Icons.receipt),
            title: Text("Commande #1022"),
            subtitle: Text("Montant: 120 DH"),
          ),
        ),
      ],
    );
  }
}
