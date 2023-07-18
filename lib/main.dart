import 'package:flutter/material.dart';
import 'package:programming_language_flutter/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Programming List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue[500]!),
        useMaterial3: true,
      ),
      home: const HomePage(title: '10 Popular Progamming Languages'),
      debugShowCheckedModeBanner: false,
    );
  }
}
