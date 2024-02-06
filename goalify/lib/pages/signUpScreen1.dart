import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8C5CB3),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60.0),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Text(
                'Welcome to Mentor Mate',
                style:const TextStyle(
                  color: Colors.white,
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Text(
                '"Every accomplishment starts with the decision to try."',
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 22.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle signup button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding:const  EdgeInsets.symmetric(horizontal: 60.0, vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Signup',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Already have an account? Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          
           Padding(
  padding: EdgeInsets.symmetric(horizontal: 10.0),
  child: Container(
    alignment: Alignment.bottomRight, // Aligns the child to the bottom right
    width: double.infinity, // Take full width
    height: 500.0, // Adjust the height of the container as needed
    child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('public/images/signup.png'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  ),
),

            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
