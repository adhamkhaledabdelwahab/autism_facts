import 'package:autism_facts/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Autism Facts (حقائق التوحد)',
      home: MyHomePage(title: 'Autism Facts (حقائق التوحد)'),
    );
  }
}