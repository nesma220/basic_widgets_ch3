// ignore_for_file: camel_case_types

import 'package:apprentice/card1.dart';
import 'package:apprentice/card2.dart';
import 'package:apprentice/card3.dart';
import 'package:apprentice/fooderlich_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  int _selectedIndex = 0;

  static List<Widget> pages =
   [
    const Card1(),
    const Card2(),
    const Card3(),
  ];

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = FoodlichTheme.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Fooderlich',
            style: theme.textTheme.titleLarge,
          ),
        ),
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: _selectedIndex,
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.card_giftcard,
                ),
                label: 'Card'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                ),
                label: 'Card2'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.card_giftcard,
                ),
                label: 'Card3'),
          ],
        ),
      ),
    );
  }
}
