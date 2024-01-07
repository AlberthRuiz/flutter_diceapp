import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DiceApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DiceApp",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 10,
        centerTitle: true,
      ),
    );
  }
}
