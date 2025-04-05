import 'package:flutter/material.dart';

class DragonBallAppBarDetail extends StatelessWidget
    implements PreferredSizeWidget {
  const DragonBallAppBarDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: AppBar(
        title: const Text(
          'Detalles',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF2E7D32),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
