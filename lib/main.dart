import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Colors.deepPurple,
          Colors.deepPurpleAccent,
          content: DiceRoller(),
        ),
      ),
    ),
  );
}
