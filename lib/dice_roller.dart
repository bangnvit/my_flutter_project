import 'package:flutter/material.dart';
import 'dart:math';
import 'package:my_flutter_project/util_debug.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int dice1 = 1;
  int dice2 = 2;
  int dice3 = 3;

  void onRollPressed() {
    setState(() {
      dice1 = random.nextInt(6) + 1;
      dice2 = random.nextInt(6) + 1;
      dice3 = random.nextInt(6) + 1;
    });
    f('dice1', dice1);
    f('dice2', dice2);
    f('dice3', dice3);
    f('=====', '=====');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$dice1.png', width: 100),
        const SizedBox(height: 20),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/dice-$dice2.png', width: 100),
              const SizedBox(width: 30),
              Image.asset('assets/images/dice-$dice3.png', width: 100),
            ],
          ),
        ),
        const SizedBox(height: 40),
        OutlinedButton(
          onPressed: onRollPressed,
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
