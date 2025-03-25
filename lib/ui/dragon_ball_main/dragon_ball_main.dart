import 'package:app_dragon_ball/ui/dragon_ball_main/widgets/dragon_ball_app_bar.dart';
import 'package:app_dragon_ball/ui/dragon_ball_main/widgets/dragon_ball_button.dart';
import 'package:app_dragon_ball/ui/dragon_ball_main/widgets/dragon_ball_logo.dart';
import 'package:app_dragon_ball/ui/dragon_ball_main/widgets/dragon_ball_text.dart';
import 'package:flutter/material.dart';

class DragonBallMain extends StatelessWidget {
  const DragonBallMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF57C00),
      appBar: const DragonBallAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DragonBallText(),
            DragonBallLogo(),
            DragonBallButton(),
          ],
        ),
      ),
    );
  }
}
