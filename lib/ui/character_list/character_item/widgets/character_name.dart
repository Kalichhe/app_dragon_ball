import 'package:flutter/material.dart';

class CharacterName extends StatelessWidget {
  final String name;

  const CharacterName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
  