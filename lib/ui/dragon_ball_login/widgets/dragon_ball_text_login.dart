import 'package:flutter/material.dart';

class DragonBallTextLogin extends StatelessWidget {
  const DragonBallTextLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100),
          const Text(
            'Bienvenido a la API Dragon Ball',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
