import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const ProSanteChallengeApp());
}

class ProSanteChallengeApp extends StatelessWidget {
  const ProSanteChallengeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pro Santé Challenge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}