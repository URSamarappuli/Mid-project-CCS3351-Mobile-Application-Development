import 'package:flutter/material.dart';
import 'package:midproject/screens/book_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BoookList(),
      debugShowCheckedModeBanner: false, // Hides the debug banner
    );
  }
}
