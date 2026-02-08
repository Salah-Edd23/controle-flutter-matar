import 'package:flutter/material.dart';
import '../widgets/kpi_card.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Tableau de bord",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 6),
          Text("Bonjour, Admin",
              style: TextStyle(fontSize: 16, color: Colors.grey[700])),
          SizedBox(height: 20),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                int crossAxisCount = constraints.maxWidth > 600 ? 2 : 1;

                return GridView.count(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  children: [
                    KpiCard(
                        icon: Icons.people,
                        label: "Nombre de clients",
                        value: "120",
                        color: Colors.blue),
                    KpiCard(
                        icon: Icons.shopping_cart,
                        label: "Nombre de commandes",
                        value: "85",
                        color: Colors.orange),
                    KpiCard(
                        icon: Icons.attach_money,
                        label: "Revenu journalier",
                        value: "3 500 DH",
                        color: Colors.green),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
