import 'package:admin_panel/about_page.dart';
import 'package:admin_panel/home_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0; // Move the index to the state

  final List<Widget> pages = [
    const HomePage(),
    const AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book App"),
      ),
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            index = value; // Update the index when tapped
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline), label: "About"),
        ],
      ),
      body: pages[index], // Display the selected page
    );
  }
}
