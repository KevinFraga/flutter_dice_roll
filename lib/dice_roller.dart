import 'package:dice_roll_app/big_white_text.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNumber = 3;

  void rollDice() {
    if (diceNumber < 6) {
      setState(() {
        diceNumber++;
      });
    } else {
      setState(() {
        diceNumber = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/dice-$diceNumber.png",
          width: 100,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(8),
            foregroundColor: Colors.purple,
          ),
          child: const BigWhiteText('Roll Again'),
        ),
      ],
    );
  }
}
