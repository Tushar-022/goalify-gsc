import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900], // Set background color of Scaffold
      body:  Center
      (
        child: Container(
          width: 100,
          height: 100,
          alignment: Alignment.center,
          padding: EdgeInsets.all(16.0),
          color: Colors.amber,
        )
        )
    );
    
  }

}
