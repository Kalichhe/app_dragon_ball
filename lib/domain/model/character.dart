class Character {
  final String name;
  final String imageUrl;

  Character({required this.name, required this.imageUrl});

  factory Character.fromJson(Map<String, dynamic> jsonMap) {
    return Character(name: jsonMap['name'], imageUrl: jsonMap['image']);
  }
}
