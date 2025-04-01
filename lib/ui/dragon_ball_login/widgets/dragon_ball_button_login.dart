import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:app_dragon_ball/ui/character_list/character_list.dart';

class DragonBallButtonLogin extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const DragonBallButtonLogin({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  void _validateLogin(BuildContext context) {
    String storedEmail = dotenv.env['EMAIL'] ?? '';
    String storedPassword = dotenv.env['PASSWORD'] ?? '';

    if (emailController.text == storedEmail &&
        passwordController.text == storedPassword) {
      // Login exitoso, navega a CharacterList
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CharacterList()),
      );
    } else {
      // Mostrar mensaje de error
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email or Password incorrect'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => _validateLogin(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
          ),
          child: const Text('Login'),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
