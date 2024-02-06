import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900], // Set background color of Scaffold
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  print('Image clicked');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(150.0),
                  child: Image.asset(
                    'public/images/logo.png', // Update the path to your image asset
                    width: 250.0, 
                    height: 250.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Mentor Mate',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
