import 'package:bookshop/screens/bottom_bar.dart';
import 'package:bookshop/screens/welcome_screen.dart';
import 'package:bookshop/utils/app_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Book Shop',
      theme: ThemeData(
        primaryColor: primary,
      ),

      home: const WelcomeScreen(),
    );
  }
}