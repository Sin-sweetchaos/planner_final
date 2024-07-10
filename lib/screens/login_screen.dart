import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 116, 112, 112), // Set background color to black
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
          child: Container(
            padding: EdgeInsets.all(20), // Add padding for spacing inside container
            decoration: BoxDecoration(
              color: Color.fromARGB(205, 208, 181, 181), // Container background color
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Take minimum space
              children: <Widget>[
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
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
