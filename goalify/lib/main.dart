import 'package:flutter/material.dart';
import '/pages/splashScreen.dart'; 
import '/pages/aboutUs.dart';
import '/pages/temp.dart';
import '/pages/signUpScreen1.dart';
import '/pages/signUpScreen2.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
    //  home: SplashScreen(), // Use SplashScreen as the home screen
      //home:AboutUs(),
      //home:ProfileScreen(),
      debugShowCheckedModeBanner: false,
      home:SignUp(),
    );
  }
}
