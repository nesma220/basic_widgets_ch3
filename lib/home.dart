import 'package:apprentice/components/card2.dart';
import 'package:apprentice/components/card3.dart';
import 'package:apprentice/screens/explore_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> pages = [
     ExploreScreen(),
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
    return Scaffold(
        appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
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
    );
  }
}
