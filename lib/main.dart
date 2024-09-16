import 'package:flutter/material.dart';
import 'package:imtihon/dd.dart'; // ShoeStore sahifasi bu yerda import qilingan

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 2;

  // Sahifalar ro'yxati
  final List<Widget> _pages = [
    Scaffold(
      body: Center(
        child: Text('Page 5'), // 5-menyu: Bo'sh sahifa
      ),
    ), // 1-menyu: ShoeStore sahifasi
    Scaffold(
      body: Center(
        child: Text('Page 5'), // 5-menyu: Bo'sh sahifa
      ),
    ), // 2-menyu: ShoeStore sahifasi
    ShoeStore(), // 3-menyu: ShoeStore sahifasi
    Scaffold(
      body: Center(
        child: Text('Page 4'), // 4-menyu: Bo'sh sahifa
      ),
    ),
    Scaffold(
      body: Center(
        child: Text('Page 5'), // 5-menyu: Bo'sh sahifa
      ),
    ),
  ];

  // Bottom Navigation Bar elementlari
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Tanlangan sahifa ko'rsatiladi
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue, // Tanlangan element rangi
        unselectedItemColor: Colors.black, // Tanlanmagan element rangi
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
