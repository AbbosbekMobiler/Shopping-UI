import 'package:flutter/material.dart';
import 'package:shop_ui_kit/constants.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop UI',
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.blue,
        fontFamily: 'Gordita',
        textTheme: const TextTheme(
          bodySmall : TextStyle(color: Colors.black54)
        )
      ),
      home: const HomeScreen(),
    );
  }
}

