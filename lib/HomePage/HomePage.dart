import 'package:flutter/material.dart';
import 'BottomNavBar.dart'; // Import the BottomNavBar widget
import 'SearchPage.dart'; // Import the SearchPage widget

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Example username, this would typically come from your authentication logic
  String userName = "John Doe";

  // List of genres
  final List<String> genres = [
    'Action',
    'Comedy',
    'Drama',
    'Horror',
    'Romance',
    'Sci-Fi',
    'Thriller',
    'Fantasy',
    'Animation',
    'Documentary'
  ];

  // Selected genre
  String selectedGenre = 'Action'; // Default selection

  // Index for bottom navigation bar items
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: _buildBody(), // Method to build the body content
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          // Navigate or perform action based on index
          _handleNavigation(index);
        },
      ),
    );
  }

  Widget _buildBody() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 100.0, // Adjust the height as needed
          flexibleSpace: FlexibleSpaceBar(
            background: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome,',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8), // Adjusted spacing
                      Text(
                        userName,
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.bookmark,
                      size: 36.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Handle bookmark action here
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Popular Category',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                DropdownButton<String>(
                  value: selectedGenre,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  elevation: 16,
                  style: const TextStyle(color: Colors.white),
                  underline: Container(
                    height: 2,
                    color: Colors.white,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedGenre = newValue!;
                    });
                  },
                  items: genres.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(color: Colors.white)), // Set text color to white
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _handleNavigation(int index) {
    // Navigate or perform action based on index
    switch (index) {
      case 0:
      // Navigate to Home page or perform action
        break;
      case 1:
      // Navigate to Search page or perform action
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SearchPage()),
        );
        break;
      case 2:
      // Navigate to Bookmark page or perform action
        Navigator.pushNamed(context, '/bookmark');
        break;
      case 3:
      // Navigate to User page or perform action
        Navigator.pushNamed(context, '/user');
        break;
      default:
        break;
    }
  }
}
