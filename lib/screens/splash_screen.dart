import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false; // State variable to track loading state

  @override
  void initState() {
    super.initState();
    _navigateToMainScreen();
  }

  _navigateToMainScreen() async {
    // Simulating loading delay
    setState(() {
      isLoading = true; // Show loading indicator
    });

    await Future.delayed(Duration(seconds: 3)); // Simulate a delay of 3 seconds

    // Navigate to the main screen after delay
    Navigator.pushReplacementNamed(context, '/main');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200], // Background color set to peach
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Plan It',
              style: GoogleFonts.playfairDisplay(
                textStyle: TextStyle(
                  fontSize: 70,
                  color: Color.fromARGB(255, 36, 29, 26), // Text color set to brown
                ),
              ),
            ),
            SizedBox(height: 20), // Spacer between text and button
            if (isLoading)
              CircularProgressIndicator() // Show loading indicator if isLoading is true
            else
              ElevatedButton(
                onPressed: () {
                  // Handle button press if needed
                },
                child: Text('Start'), // Button text
              ),
          ],
        ),
      ),
    );
  }
}
