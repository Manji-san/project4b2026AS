import 'package:flutter/material.dart';
import 'package:widgets1/screen1.dart';
import 'package:widgets1/screen2.dart';
import 'package:widgets1/Screen3.dart';
import 'package:widgets1/Screen4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
