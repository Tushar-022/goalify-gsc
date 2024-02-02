import 'package:flutter/material.dart';
import '../pages/splashScreen.dart'; // Import SplashScreen.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(), // Use SplashScreen as the home screen
    );
  }
}
