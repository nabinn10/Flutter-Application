import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _showFilters = false;
  double _sliderValue = 0.7;

  // Responsive breakpoints
  bool get _isSmallScreen => MediaQuery.of(context).size.width < 600;
  // Removed unused _isMediumScreen
  // Removed unused _isLargeScreen

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: _isSmallScreen ? 16.0 : 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSearchBar(),
                      if (_showFilters) _buildSearchFilters(),
                      SizedBox(height: _isSmallScreen ? 16 : 24),
                      _buildCategoryButtons(),
                      SizedBox(height: _isSmallScreen ? 16 : 24),
                      _buildPromoBanner(),
                      SizedBox(height: _isSmallScreen ? 16 : 24),
                      _buildCategoryTabs(),
                      // Removed recommendation header and recommendations sections
                    ],
                  ),
                ),
              ),
            ),
            _buildBottomNavigationBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: _isSmallScreen ? 16.0 : 20.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(0, 0, 0, 0.03),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Hero(
            tag: 'profile_image',
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFF5D3FD3), width: 2),
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/loho.png"),
                radius: 20,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello Nabin!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF2D3748),
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Color(0xFF5D3FD3),
                      size: 16,
                    ),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        'Bhanu-10, Tanahun',
                        style: TextStyle(
                          color: Color(0xFF718096),
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade200),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(0, 0, 0, 0.05),
                  spreadRadius: 0,
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: _isSmallScreen ? 22 : 24,
                    color: const Color(0xFF2D3748),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFF4757),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: _isSmallScreen ? 2 : 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: Color(0xFF718096)),
          const SizedBox(width: 12),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search your destination...',
                hintStyle: TextStyle(color: Color(0xFFA0AEC0)),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 14),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _showFilters = !_showFilters;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: _showFilters ? const Color(0xFF5D3FD3) : Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.tune,
                color: _showFilters ? Colors.white : const Color(0xFF718096),
                size: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchFilters() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Filter your search',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF2D3748),
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: const Icon(Icons.close, size: 20, color: Color(0xFF718096)),
                onPressed: () {
                  setState(() {
                    _showFilters = false;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildFilterSection('Price Range', isSlider: true),
          const SizedBox(height: 16),
          _buildFilterSection('Rating', options: ['Any', '3+', '4+', '4.5+']),
          const SizedBox(height: 16),
          _buildFilterSection('Property Type', options: ['All', 'Hotel', 'Resort', 'Villa', 'Apartment']),
          const SizedBox(height: 16),
          _buildFilterSection('Amenities', options: ['WiFi', 'Pool', 'AC', 'Restaurant', 'Parking']),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF5D3FD3),
                    elevation: 0,
                    side: const BorderSide(color: Color(0xFF5D3FD3)),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Reset'),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _showFilters = false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5D3FD3),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Apply'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFilterSection(String title, {List<String>? options, bool isSlider = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF4A5568),
          ),
        ),
        const SizedBox(height: 8),
        isSlider
            ? Column(
                children: [
                  SliderTheme(
                    data: SliderThemeData(
                      thumbColor: const Color(0xFF5D3FD3),
                      activeTrackColor: const Color(0xFF5D3FD3),
                      inactiveTrackColor: const Color(0xFFE2E8F0),
                      trackHeight: 4,
                      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
                    ),
                    child: Slider(
                      value: _sliderValue,
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$0', style: TextStyle(color: Color(0xFF718096))),
                        Text('\$200', style: TextStyle(color: Color(0xFF718096))),
                        Text('\$500+', style: TextStyle(color: Color(0xFF718096))),
                      ],
                    ),
                  ),
                ],
              )
            : Wrap(
                spacing: 8,
                runSpacing: 8,
                children: options!.map((option) {
                  final bool isSelected = option == 'All' || option == 'Any' || option == 'WiFi';
                  return InkWell(
                    onTap: () {
                      // Toggle selection (would need proper state management in a real app)
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: isSelected ? const Color(0xFF5D3FD3).withValues(93, 63, 211, 0.1) : const Color(0xFFF7FAFC),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: isSelected ? const Color(0xFF5D3FD3) : const Color(0xFFE2E8F0),
                        ),
                      ),
                      child: Text(
                        option,
                        style: TextStyle(
                          color: isSelected ? const Color(0xFF5D3FD3) : const Color(0xFF718096),
                          fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
      ],
    );
  }

  Widget _buildCategoryButtons() {
    final categories = [
      {'icon': Icons.apartment, 'label': 'Hotels', 'color': const Color(0xFF5D3FD3)},
      {'icon': Icons.flight, 'label': 'Flight', 'color': const Color(0xFF00B5AD)},
      {'icon': Icons.directions_bus, 'label': 'Bus', 'color': const Color(0xFFFF9F43)},
      {'icon': Icons.train, 'label': 'Train', 'color': const Color(0xFFFF6B6B)},
      // {'icon': Icons.directions_boat, 'label': 'Ship', 'color': const Color(0xFF42A5F5)},
    ];

    // For small screens, adjust the size
    final itemWidth = _isSmallScreen ? 65.0 : 70.0;
    final itemHeight = _isSmallScreen ? 65.0 : 70.0;
    final iconSize = _isSmallScreen ? 26.0 : 30.0;

    return SizedBox(
      height: _isSmallScreen ? 120 : 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final Color color = category['color'] as Color;
          
          return Padding(
            padding: EdgeInsets.only(
              right: index < categories.length - 1 ? _isSmallScreen ? 12 : 16 : 0,
            ),
            child: Column(
              children: [
                Container(
                  width: itemWidth,
                  height: itemHeight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: color.withValues(color.red, color.green, color.blue, 0.2),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Icon(
                    category['icon'] as IconData,
                    color: color,
                    size: iconSize,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  category['label'] as String,
                  style: TextStyle(
                    fontSize: _isSmallScreen ? 13 : 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF2D3748),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildPromoBanner() {
    return Container(
      height: _isSmallScreen ? 220 : 180,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF5D3FD3), Color.fromARGB(255, 216, 210, 231)],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 172, 155, 240).withValues(172, 155, 240, 0.3),
            spreadRadius: 0,
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      padding: EdgeInsets.all(_isSmallScreen ? 16 : 20),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Travel Smart,\nStay Comfortable',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: _isSmallScreen ? 16 : 18,
                    color: Colors.white,
                    height: 1.4,
                  ),
                ),
                SizedBox(height: _isSmallScreen ? 8 : 10),
                Text(
                  'Plan your trip, book your stay, and get moving – all in one app',
                  style: TextStyle(
                    color: Colors.white.withValues(255, 255, 255, 0.9),
                    fontSize: _isSmallScreen ? 12 : 13,
                    height: 1.4,
                  ),
                ),
                SizedBox(height: _isSmallScreen ? 12 : 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF5D3FD3),
                    padding: _isSmallScreen
                        ? const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
                        : const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          if (!_isSmallScreen)
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Background decorative circle
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withValues(255, 255, 255, 0.2),
                      ),
                    ),
                    // Travel icon
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(0, 0, 0, 0.1),
                            blurRadius: 10,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.flight_takeoff,
                        color: Color(0xFF5D3FD3),
                        size: 40,
                      ),
                    ),
                    // Additional decorative elements
                    Positioned(
                      top: 20,
                      right: 30,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(255, 255, 255, 0.3),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 20,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
   
  }
 
  Widget _buildCategoryTabs() {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TabBar(
        controller: _tabController,
        isScrollable: true,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xFF5D3FD3),
        ),
        labelColor: Colors.white,
        unselectedLabelColor: const Color(0xFF718096),
        labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        tabs: const [
          Tab(text: 'All'),
          Tab(text: 'Hotels'),
          Tab(text: 'Resorts'),
          Tab(text: 'Villas'),
          Tab(text: 'Apartments'),
        ],
      ),
    );
  }

  // Removed _buildRecommendationsHeader() method

  // Note: _buildBottomNavigationBar() method is referenced but not implemented in the original code
  Widget _buildBottomNavigationBar() {
    // Implementation would go here
    return Container(); // Placeholder implementation
  }
}