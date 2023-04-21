import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/account_page.dart';
import 'package:shop_app/screens/home_page.dart';
import 'package:shop_app/screens/liked_page.dart';
import 'package:shop_app/screens/search_page.dart';
import 'package:shop_app/screens/shopbar_page.dart';

class MyTab extends StatefulWidget {
  const MyTab({super.key});

  @override
  State<MyTab> createState() => _MyTabState();
}

class _MyTabState extends State<MyTab> {
  int currectPage = 2;
  void selectPage(int index) {
    setState(() {
      currectPage = index;
    });
  }

  final List<Widget> _pages = [
    SearchPage(),
    const LikedPage(),
    const HomePage(),
    AccountPage(),
    const ShopBagPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currectPage],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.brown,
        currentIndex: currectPage,
        unselectedIconTheme: IconThemeData(color: Colors.black),
        onTap: selectPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_max_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: ''),
        ],
      ),
    );
  }
}
