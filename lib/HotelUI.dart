import 'dart:math';

import 'package:flutter/material.dart';

class HotelUI extends StatefulWidget {
  const HotelUI({super.key});

  @override
  State<HotelUI> createState() => _HotelUIState();
}

class _HotelUIState extends State<HotelUI> {
  @override
  Widget build(BuildContext context) {
    bool isSmallDevice = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Row
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/loho.png'),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Nabin Poudel',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '123 Main Street, Cityville',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.notifications_none),
                          onPressed: () {},
                        ),
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: const Text(
                              '3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Search Bar
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search, color: Colors.grey),
                      hintText: 'Search hotels, locations...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Menu Items Row
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildMenuItem('Hotel', Icons.hotel),
                      _buildMenuItem('Bus', Icons.directions_bus),
                      _buildMenuItem('Train', Icons.train),
                      _buildMenuItem('Flight', Icons.flight),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Banner
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:
                        isSmallDevice
                            ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Travel Smart, Stay Comfortable',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Experience the best travel.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Image.asset(
                                  'assets/images/pp.png',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            )
                            : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Travel Smart, Stay Comfortable',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Experience the best travel.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  'assets/images/pp.png',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                  ),
                ),
                const SizedBox(height: 20),

                // Scrollable Right Menu
                Container(
                  height: 80,
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildRightSideMenuItem('All Hotels', Icons.hotel),
                        _buildRightSideMenuItem('Resorts', Icons.beach_access),
                        _buildRightSideMenuItem(
                          'Beachfront Hotels',
                          Icons.wb_sunny,
                        ),
                        _buildRightSideMenuItem('Luxury Hotels', Icons.star),
                        _buildRightSideMenuItem(
                          'Budget Hotels',
                          Icons.attach_money,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Recommended Hotels Title
                const Text(
                  'Recommended Hotels',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),

                // Hotel Recommendation List
                Column(
                  children: [
                    _buildHotelRecommendation(
                      'Hotel Paradise',
                      'assets/images/pp.png',
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Near Locations Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Near Locations',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Near Locations Card
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/pp.png",
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Hotel Hotel",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Icon(Icons.favorite_border),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "This is the location of hotel",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "RS. 200",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "RS. 150",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "4.2",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // sized box
                const SizedBox(height: 20),

                // List style
                SizedBox(
                  // width: ,
                  child: Card(
                    color: const Color.fromARGB(255, 225, 222, 213),
                          
                    child: ListTile(
                      contentPadding: EdgeInsets.all(0),
                      
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "assets/images/pp.png",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Bagaicha Hotel",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text("Subtitle"),
                            Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: const Text("RS. 300"),
                            ),
                        ],
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.favorite, color: Colors.red),
                          SizedBox(height: 4),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.star, color: Colors.amber),
                              
                              Text(
                                "4.3 k",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                
                                  
                                ),
                                
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Menu Item Builder
  Widget _buildMenuItem(String title, IconData icon) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
          width: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon, size: 40, color: Colors.blue),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Right Side Menu Item
  Widget _buildRightSideMenuItem(String title, IconData icon) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {
          print('$title tapped');
        },
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            children: [
              Icon(icon, size: 24, color: Colors.blue),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Hotel Recommendation Card
  Widget _buildHotelRecommendation(String title, String imagePath) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {
          print('$title tapped');
        },
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(15),
                ),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
