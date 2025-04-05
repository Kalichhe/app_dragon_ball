import 'package:flutter/material.dart';

class CharacterImage extends StatelessWidget {
  final String image;
  final VoidCallback onDetailTap;

  const CharacterImage({
    super.key,
    required this.image,
    required this.onDetailTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onDetailTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: ClipRRect(
            child: Image.network(
              image,
              width: 200,
              height: 300,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
