import 'package:flutter/material.dart';

class DragonBallRaceDetail extends StatelessWidget {
  final String race;

  const DragonBallRaceDetail({super.key, required this.race});

  @override
  Widget build(BuildContext context) {
    return Center(
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
              'Race: ',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              race,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
