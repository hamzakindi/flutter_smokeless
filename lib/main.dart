import 'package:flutter/material.dart';
// import 'onboarding.dart'; // Removed unused import
import 'welcome_screen.dart'; // Added import for WelcomeScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quit Smart',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const WelcomeScreen(), // WelcomeScreen is now imported
    );
  }
}
