
// ignore_for_file: camel_case_types

import 'package:apprentice/fooderlich_theme.dart';
import 'package:apprentice/home.dart';
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


  @override
  Widget build(BuildContext context) {
    final theme = FoodlichTheme.dark();
    return MaterialApp(
        debugShowCheckedModeBanner: false, theme: theme, home: const HomeScreen());
  }
}
