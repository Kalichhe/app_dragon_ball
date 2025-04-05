class Character {
  final int id;
  final String name;
  late final String ki;
  final String maxKi;
  final String race;
  final String gender;
  final String image;
  final String affiliation;

  Character({
    required this.id,
    required this.name,
    required this.ki,
    required this.maxKi,
    required this.race,
    required this.gender,
    required this.image,
    required this.affiliation,
  });

  factory Character.fromJson(Map<String, dynamic> jsonMap) {
    return Character(
      id: jsonMap['id'],
      name: jsonMap['name'],
      ki: jsonMap['ki'],
      maxKi: jsonMap['maxKi'],
      race: jsonMap['race'],
      gender: jsonMap['gender'],
      image: jsonMap['image'],
      affiliation: jsonMap['affiliation'],
    );
  }
}
