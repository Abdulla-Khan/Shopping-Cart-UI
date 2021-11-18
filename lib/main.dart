import 'package:flutter/material.dart';
import 'package:hackathon/constants/data.dart';
import 'package:hackathon/pages/detail_page.dart';
import 'package:hackathon/pages/home_page.dart';
import 'package:hackathon/pages/slash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
