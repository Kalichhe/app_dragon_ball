import 'package:flutter/material.dart';

class DragonBallImageDetail extends StatelessWidget {
  final String image;

  const DragonBallImageDetail({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50, top: 16),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: ClipRRect(
          child: Image.network(
            image,
            width: 200,
            height: 400,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
