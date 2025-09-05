class RMCharacter {
  final int id;
  final String name;
  final String status;
  final String image;

  RMCharacter({
    required this.id,
    required this.name,
    required this.status,
    required this.image,
  });

  factory RMCharacter.fromJson(Map<String, dynamic> json) {
    return RMCharacter(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      image: json['image'] as String,
    );
  }
}
