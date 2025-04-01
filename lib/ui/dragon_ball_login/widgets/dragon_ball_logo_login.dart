import 'package:flutter/material.dart';

class DragonBallLogoLogin extends StatelessWidget {
  const DragonBallLogoLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Image.network(
            'https://web.dragonball-api.com/images-compress/logo_dragonballapi.webp',
            width: 420,
            height: 200,
            fit: BoxFit.fill,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const CircularProgressIndicator();
            },
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error, size: 50, color: Colors.red);
            },
          ),
        ],
      ),
    );
  }
}
