import 'package:flutter/material.dart';

class HomePageUI extends StatefulWidget {
  const HomePageUI({super.key});

  @override
  State<HomePageUI> createState() => _HomePageUIState();
}

class _HomePageUIState extends State<HomePageUI> {
  final List<Map<String, dynamic>> _menuItems = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.person, 'label': 'Profile'},
    {'icon': Icons.settings, 'label': 'Settings'},
    {'icon': Icons.info, 'label': 'About'},
  ];

  final List<Map<String, dynamic>> _cardItems = [
    {'icon': Icons.hotel, 'label': 'Hotels'},
    {'icon': Icons.flight, 'label': 'Flight'},
    {'icon': Icons.directions_bus, 'label': 'Bus'},
    {'icon': Icons.train, 'label': 'Train'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/loho.png'),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                        ],
                      ),
                    ],
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.black,
                    size: 30,
                  ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.tune),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                _menuItems.length,
                (index) => _buildMenuItem(
                  _menuItems[index]['icon'] as IconData,
                  _menuItems[index]['label'] as String,
                ),
                ),
              ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}