import 'package:flutter/material.dart';

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Example 1'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('This is Flutter example #1'),
          ],
        ),
      ),
    );
  }
}