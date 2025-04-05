import 'package:flutter/material.dart';

class DragonBallImageDetail extends StatelessWidget {
  final String image;

  const DragonBallImageDetail({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image.network(image, width: 200, height: 400, fit: BoxFit.fill),
    );
  }
}
