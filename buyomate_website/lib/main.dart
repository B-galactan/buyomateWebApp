import 'package:flutter/material.dart';
import 'screens/homeScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buyomate.com',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
      ),
      home: HomeScreen(),
    );
  }
}

//This project was a practice session for the website buyomate.com online store
