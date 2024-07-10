import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 77, 75, 75), // Set background color to black
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
          child: Container(
            padding: EdgeInsets.all(20), // Add padding for spacing inside container
            decoration: BoxDecoration(
              color: Color.fromARGB(202, 219, 183, 183), // Container background color
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Take minimum space
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                SizedBox(height: 20), // Add space between fields
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                SizedBox(height: 20), // Add space between fields
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true, // Hide password text
                ),
                SizedBox(height: 20), // Add space below password field
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
