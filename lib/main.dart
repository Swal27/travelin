import 'package:flutter/material.dart';
import 'package:travelin/home_screen.dart';
//import 'package:travelin/place.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      home: HomeScreen(),
    );
  }
}
