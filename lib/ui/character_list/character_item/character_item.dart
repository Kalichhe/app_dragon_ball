import 'package:app_dragon_ball/domain/model/character.dart';
import 'package:app_dragon_ball/ui/character_list/character_item/widgets/character_image.dart';
import 'package:app_dragon_ball/ui/character_list/character_item/widgets/character_name.dart';

import 'package:flutter/widgets.dart';

class CharacterItem extends StatelessWidget {
  final Character character;
  final VoidCallback onDetailTap;

  const CharacterItem({
    super.key,
    required this.character,
    required this.onDetailTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CharacterImage(image: character.image, onDetailTap: onDetailTap),
          CharacterName(name: character.name),
        ],
      ),
    );
  }
}
