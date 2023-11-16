import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Set the initial route to the home page
      routes: {
        '/': (context) => const LoginPage(), // Define the login page as the initial route
        '/home': (context) => const HomePage(), // Define the home page route
      },
    );
  }
}
