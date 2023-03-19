import 'package:flutter/material.dart';
import 'package:flutter_tabbar/Core/app_globals.dart';
import 'package:flutter_tabbar/UI/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RentalsDetailScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

