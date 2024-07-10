import 'package:flutter/material.dart';
import 'package:planner/screens/login_screen.dart';
import 'package:planner/screens/signup_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Optional: Set background color
      body: Stack(
        children: <Widget>[
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'lib/screens/assets/images/stopwatch.jpg',  // Path to your image file
              fit: BoxFit.cover, // Cover the entire screen
            ),
          ),

          // 'Plan It' Text
          Positioned(
            top: 100, // Adjust top position as needed
            left: MediaQuery.of(context).size.width * 0.5 - 50, // Center horizontally
            child: Text(
              'Plan It -Work it',
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(215, 185, 191, 192), // Gold color
              ),
            ),
          ),

          // Centered Login and Sign Up Buttons
          Positioned(
            left: MediaQuery.of(context).size.width * 0.6, // Adjust left position as needed
            top: MediaQuery.of(context).size.height / 2 - 50, // Adjust top position as needed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Adjust button size
                    backgroundColor: Colors.grey, // Gray button background color
                    elevation: 0, // Remove button elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Adjust button border radius
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.white), // Adjust button text style
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Adjust button size
                    backgroundColor: Colors.grey, // Gray button background color
                    elevation: 0, // Remove button elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Adjust button border radius
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18, color: Color.fromRGBO(245, 243, 241, 1)), // Adjust button text style
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
