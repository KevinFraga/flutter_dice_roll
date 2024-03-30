import 'package:dice_roll_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:dice_roll_app/big_white_text.dart';
import 'package:dice_roll_app/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roll App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        body: const GradientContainer(
          colors: [
            Colors.white,
            Colors.blue,
            Colors.black,
            Colors.red,
            Colors.green
          ],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                BigWhiteText('Dice Roll'),
                DiceRoller(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
