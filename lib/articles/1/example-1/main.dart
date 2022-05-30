import 'package:flutter/material.dart';

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example 1'),
      ),
      body: Center(        
        child: Column(          
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text('This is Flutter example #1'),
            ),
          ],
        ),
      ),
    );
  }
}