import 'package:app_dragon_ball/ui/character_list/character_list.dart';
import 'package:flutter/material.dart';

class DragonBallButton extends StatelessWidget {
  const DragonBallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CharacterList()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple, // Cambia el color aquí
            foregroundColor: Colors.white, // Color del texto
          ),
          child: const Text('View Characters'),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
