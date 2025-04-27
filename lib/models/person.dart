class Person {
  final String id;
  final String name;
  final String? birthDate;
  final String? deathDate;
  final String? gender;
  final String? description;

  Person({
    required this.id,
    required this.name,
    this.birthDate,
    this.deathDate,
    this.gender,
    this.description,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['id'] as String,
      name: json['name'] as String,
      birthDate: json['birthDate'] as String?,
      deathDate: json['deathDate'] as String?,
      gender: json['gender'] as String?,
      description: json['description'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'birthDate': birthDate,
      'deathDate': deathDate,
      'gender': gender,
      'description': description,
    };
  }
} 