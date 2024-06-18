import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  BottomNavBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          onPressed: () {
            // Handle Home button press
            onTap(0); // Navigate to Home page or perform action
          },
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
          onPressed: () {
            // Handle Search button press
            onTap(1); // Navigate to Search page or perform action
          },
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: 'Bookmark',
          onPressed: () {
            // Handle Bookmark button press
            onTap(2); // Navigate to Bookmark page or perform action
          },
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'User',
          onPressed: () {
            // Handle User button press
            onTap(3); // Navigate to User page or perform action
          },
        ),
      ],
    );
  }
}
