import 'package:flutter/material.dart';

class DragonBallText extends StatelessWidget {
  const DragonBallText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Bienvenido a la API Dragon Ball',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      textAlign: TextAlign.center,
    );
  }
}
