import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/app_colors/app_colors.dart';
import '/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: mBackground),
      home: const HomeScreen(),
    );
  }
}
