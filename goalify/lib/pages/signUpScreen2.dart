import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8C5CB3),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 80.0),
            Text(
              'Sign up to MentorMate',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle sign up with Google
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60.0, vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child:
                    // Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: const [
//      Icon(
//   Icons.Google,
//   color: Colors.white,
// ),

//       SizedBox(width: 10), // Add some space between the icon and text
                    Text(
                  'Sign up with Google',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
//     ],
//   ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 20, right: 20, bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 12.0),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 12.0),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 12.0),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 10),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 12.0),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 5.0, left: 20, right: 20, bottom: 5),
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                 const Text(
                    'I agree to the Terms and Conditions',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                // SizedBox(height: 5.0),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top:2.0,bottom: 2.0),
                              child: Image.asset(
                                'public/images/signup2.png',
                                width: 400.0,
                                height: 200.0,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle create account button press
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 10.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text(
                              'Create Account',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
             //SizedBox(height:2.0),
    TextButton(
      onPressed: () {
        // Handle login button press
      },
      child: const Text(
        'Already have an account? Login',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
    ),

            // SizedBox(height: 20.0),
          ],
          
        ),
      ),
    );
  }
}
