import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller> {

  static const diceImages = [
    'assets/images/dice-1.png',
    'assets/images/dice-2.png',
    'assets/images/dice-3.png',
    'assets/images/dice-4.png',
    'assets/images/dice-5.png',
    'assets/images/dice-6.png',
  ];
  var activeDiceNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          diceImages[activeDiceNum],
          width: 200,
        ),
        const SizedBox(height:20),
        OutlinedButton (
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 28,
              )
          ),
          child: const Text("ROLL"),
        )
      ],
    );
  }

  void rollDice() {
    var diceNum = Random().nextInt(6);
    setState(() {
      activeDiceNum = diceNum;
    });
  }

}


