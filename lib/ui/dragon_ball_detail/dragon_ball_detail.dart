import 'package:app_dragon_ball/domain/model/character.dart';
import 'package:app_dragon_ball/ui/dragon_ball_detail/widgets/dragon_ball_affiliation_detail.dart';
import 'package:app_dragon_ball/ui/dragon_ball_detail/widgets/dragon_ball_app_bar_detail.dart';
import 'package:app_dragon_ball/ui/dragon_ball_detail/widgets/dragon_ball_gender_detail.dart';
import 'package:app_dragon_ball/ui/dragon_ball_detail/widgets/dragon_ball_image_detail.dart';
import 'package:app_dragon_ball/ui/dragon_ball_detail/widgets/dragon_ball_ki_detail.dart';
import 'package:app_dragon_ball/ui/dragon_ball_detail/widgets/dragon_ball_max_ki_detail.dart';
import 'package:app_dragon_ball/ui/dragon_ball_detail/widgets/dragon_ball_name_detail.dart';
import 'package:app_dragon_ball/ui/dragon_ball_detail/widgets/dragon_ball_race_detail.dart';
import 'package:flutter/material.dart';

class DragonBallDetail extends StatelessWidget {
  final Character character;
  const DragonBallDetail({
    super.key,
    required this.character,
    required String image,
    required String name,
    required String ki,
    required String maxKi,
    required String race,
    required String gender,
    required String affiliation,
  });

  String _getKi(String ki) {
    if (ki == "unknown") {
      return 'Other';
    } else {
      return ki;
    }
  }

  String _getMaxKi(String maxKi) {
    if (maxKi == "unknown") {
      return 'Other';
    } else {
      return maxKi;
    }
  }

  String _getRace(String race) {
    if (race == "Unknown" || race == "unknown") {
      return 'Other';
    } else {
      return race;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DragonBallAppBarDetail(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              DragonBallImageDetail(image: character.image),
              DragonBallNameDetail(name: character.name),
              DragonBallKiDetail(ki: _getKi(character.ki)),
              DragonBallMaxKiDetail(maxKi: _getMaxKi(character.maxKi)),
              DragonBallRaceDetail(race: _getRace(character.race)),
              DragonBallGenderDetail(gender: character.gender),
              DragonBallAffiliationDetail(affiliation: character.affiliation),
            ],
          ),
        ),
      ),
    );
  }
}
