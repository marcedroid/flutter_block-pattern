import 'package:flutter/material.dart';
import '../src/screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Patrón BLoC Login",
      home: Scaffold(
        body: SafeArea(
            child: Center(
              child: LoginScreen(),
            )
        ),
      ),
    );
  }
}