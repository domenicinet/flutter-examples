import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SwapWidget(),
        ),
      ),
    );
  }
}

class SwapWidget extends StatefulWidget {
  @override
  createState() => _SwapWidgetState();
}

class _SwapWidgetState extends State<SwapWidget> {
  final double widgetATop = 20;
  final double widgetBTop = 110;
  bool swapped = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 150,
//       color: Colors.blue,
      child: Stack(
        children: <Widget> [
          // Widget A
          Positioned(
            top: swapped ? widgetBTop : widgetATop,
            left: 20,
            child: const Text("This is widget A"),
          ),
          // Widget B
          Positioned(
            top: swapped ? widgetATop : widgetBTop,
            left: 20,
            child: const Text("This is widget B"),
          ),
          // Swap button
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => setState(() {
                swapped = !swapped;
              }),
              child: const Text("swap"),
            ),
          ),
        ],
      ),
    );
  }
}