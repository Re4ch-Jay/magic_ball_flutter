import 'package:flutter/material.dart';
import 'dart:math';

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;

  int randomBall() {
    return Random().nextInt(5) + 1;
  }

  void handlePress() {
    setState(() {
      ballNumber = randomBall();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "The Magic Ball",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {
            handlePress();
          },
          child: Image.asset("images/ball$ballNumber.png"),
        ),
      ],
    );
  }
}
