import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'clients_page.dart';
import 'commandes_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    DashboardPage(),
    ClientsPage(),
    CommandesPage(),
  ];

  void _changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mini CRM")),

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Admin User"),
              accountEmail: Text("admin@crm.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40),
              ),
              decoration: BoxDecoration(color: Colors.indigo),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Dashboard"),
              onTap: () => _changePage(0),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Clients"),
              onTap: () => _changePage(1),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Commandes"),
              onTap: () => _changePage(2),
            ),
          ],
        ),
      ),

      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Clients"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Commandes"),
        ],
      ),
    );
  }
}
