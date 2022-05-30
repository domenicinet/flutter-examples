import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final double address1Top = 20;
  final double address2Top = 110;
  bool swapped = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 150,
      color: Colors.blue,
      child: Stack(
        children: <Widget> [
          // Top address
          Positioned(
            top: swapped ? address2Top : address1Top,
            left: 20,
            child: const Text("This is the first address"),
          ),
          // Bottom address
          Positioned(
            top: swapped ? address1Top : address2Top,
            left: 20,
            child: const Text("This is another address"),
          ),
          // Swap button
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => setState(() {
                swapped = !swapped;
              }),
              child: const Text(
                "swap",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}