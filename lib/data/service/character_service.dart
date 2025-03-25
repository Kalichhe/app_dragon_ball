import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:app_dragon_ball/domain/model/character.dart';

class CharacterService {
  Future<List<Character>> fetchCharacterList() async {
    final url = Uri.https('dragonball-api.com', '/api/characters', {
      'limit': '58',
    });

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> listOfJson =
          jsonDecode(response.body)['items'] as List;
      final characterList =
          listOfJson.map((json) => Character.fromJson(json)).toList();
      return characterList;
    } else {
      throw Exception('No exite ese personaje');
    }
  }
}
