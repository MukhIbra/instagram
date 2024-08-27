import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/profile_page.dart';
import 'package:myfirstapp/pages/reels_page.dart';
import 'package:myfirstapp/pages/search_page.dart';
import 'package:myfirstapp/pages/shop_page.dart';

import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  var _currentIndex = 0;

  List children = [
    Home(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage()
  ];

  void onChanged(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onChanged,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black,), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call, color: Colors.black,), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop, color: Colors.black,), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black,), label: 'person'),
        ],
      ),
    );
  }
}
