import 'package:dscan/page/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Material(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SafeArea(child: child!),
          ),
        );
      },
      home: HomeScreen(),
    );
  }
}
