import 'package:flutter/material.dart';

class DragonBallGenderDetail extends StatelessWidget {
  final String gender;
  const DragonBallGenderDetail({super.key, required this.gender});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Container(
          width: 300,
          padding: EdgeInsets.all(8.0), // Espaciado interno
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // Color del borde
              width: 2.0, // Grosor del borde
            ),
            borderRadius: BorderRadius.circular(8.0), // Bordes redondeados
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender: ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                gender,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
