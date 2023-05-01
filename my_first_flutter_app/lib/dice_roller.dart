import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  // const DiceRoller({super.key});
  const DiceRoller({key}) : super(key: key);
  @override
  //the createStae() function
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  void rollDice() {
    setState(
      () {
        var diceRoll = randomizer.nextInt(5) + 1;
        activeDiceImage = 'assets/images/dice-$diceRoll.png';
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        // const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
              padding: const EdgeInsets.only(top: 20)),
          child: const Text('roll dice'),
        ),
        OutlinedButton(
          onPressed: rollDice,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.pink,
            textStyle: const TextStyle(fontSize: 28),
            padding: const EdgeInsets.only(bottom: 20),
          ),
          child: const Text('roll this dice'),
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.lime,
            shadowColor: Colors.lime,
            textStyle: const TextStyle(fontSize: 28),
            padding: const EdgeInsets.all(20),
          ),
          child: const Text(
            'roll this dice!',
            textAlign: TextAlign.start,
          ),
        )
      ],
    );
  }
}
