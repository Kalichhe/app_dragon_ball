import 'package:flutter/material.dart';

class DragonBallMaxKiDetail extends StatelessWidget {
  final String maxKi;

  const DragonBallMaxKiDetail({super.key, required this.maxKi});

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
                'Max Ki: ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                maxKi,
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
