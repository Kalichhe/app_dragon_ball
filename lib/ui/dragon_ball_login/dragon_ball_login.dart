import 'package:app_dragon_ball/ui/dragon_ball_detail/widgets/dragon_ball_app_bar_detail.dart';
import 'package:app_dragon_ball/ui/dragon_ball_login/widgets/dragon_ball_button_login.dart';
import 'package:app_dragon_ball/ui/dragon_ball_login/widgets/dragon_ball_email_login.dart';
import 'package:app_dragon_ball/ui/dragon_ball_login/widgets/dragon_ball_logo_login.dart';
import 'package:app_dragon_ball/ui/dragon_ball_login/widgets/dragon_ball_password_login.dart';
import 'package:app_dragon_ball/ui/dragon_ball_login/widgets/dragon_ball_text_login.dart';
import 'package:flutter/material.dart';

class DragonBallLogin extends StatelessWidget {
  DragonBallLogin({super.key});

  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF57C00),
      appBar: const DragonBallAppBarDetail(),
      body: Center(
        child: Column(
          children: [
            DragonBallTextLogin(),
            DragonBallLogoLogin(),
            DragonBallEmailLogin(
              controller: email,
              hintText: 'Email',
              obscureText: false,
            ),
            DragonBallPasswordLogin(
              controller: password,
              hintText: 'Password',
              obscureText: true,
            ),
            DragonBallButtonLogin(
              emailController: email,
              passwordController: password,
            ),
          ],
        ),
      ),
    );
  }
}
