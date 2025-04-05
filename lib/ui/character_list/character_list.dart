import 'package:app_dragon_ball/data/service/character_service.dart';
import 'package:app_dragon_ball/ui/dragon_ball_detail/dragon_ball_detail.dart';
import 'package:app_dragon_ball/ui/dragon_ball_main/widgets/dragon_ball_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:app_dragon_ball/domain/model/character.dart';
import 'package:app_dragon_ball/ui/character_list/character_item/character_item.dart';

class CharacterList extends StatefulWidget {
  const CharacterList({super.key});

  @override
  State<CharacterList> createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  List<Character> _characterList = [];
  final CharacterService _characterService = CharacterService();

  @override
  void initState() {
    super.initState();
    _fetchCharacterList();
  }

  Future<void> _fetchCharacterList() async {
    final characterList = await _characterService.fetchCharacterList();
    if (!mounted) return; // Evita llamar setState() después de dispose()
    setState(() {
      _characterList = characterList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DragonBallAppBar(),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.45,
          children: List.generate(_characterList.length, (index) {
            final character = _characterList[index];
            return Column(
              children: [
                CharacterItem(
                  character: character,
                  onDetailTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => DragonBallDetail(
                              character: character,
                              image: character.image,
                              name: character.name,
                              ki: character.ki,
                              maxKi: character.maxKi,
                              race: character.race,
                              gender: character.gender,
                              affiliation: character.affiliation,
                            ),
                      ),
                    );
                  },
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
