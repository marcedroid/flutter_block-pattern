import 'package:flutter/material.dart';
import '../src/screens/login_screen.dart';

class App extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Patrón BLoC Login",
      home: Scaffold(
        key: scaffoldKey,
        body: SafeArea(
            child: Center(
              child: LoginScreen(),
            )
        ),
      ),
    );
  }
}