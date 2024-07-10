import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit'),
      ),
      drawer: CustomDrawer(), // Use a custom drawer widget
      body: Center(
        child: Text('Edit Screen'),
      ),
    );
  }
}
