import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DiceApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class DiceApp extends StatefulWidget {
  @override
  _DiceApp createState() => _DiceApp();
}

class _DiceApp extends State<DiceApp> {
  int leftDice = 1, rightDice = 1;
  @override
  void initState() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
    super.initState();
  }

  void ramdomDice() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text(
          "DiceApp",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 10,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    ramdomDice();
                  },
                  child: Image.asset(
                    'assets/images/dice$leftDice.png',
                  )),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  ramdomDice();
                },
                child: Image.asset(
                  'assets/images/dice$rightDice.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
