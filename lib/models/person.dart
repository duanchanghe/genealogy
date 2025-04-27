class Person {
  final String id;
  final String name;
  final String? birthDate;
  final String? deathDate;
  final String? gender;
  final String? description;
  final String? fatherId;
  final String? motherId;
  final List<Person> children;
  final List<Person> spouses;
  final Person? father;
  final Person? mother;

  Person({
    required this.id,
    required this.name,
    this.birthDate,
    this.deathDate,
    this.gender,
    this.description,
    this.fatherId,
    this.motherId,
    this.children = const [],
    this.spouses = const [],
    this.father,
    this.mother,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['id'] as String,
      name: json['name'] as String,
      birthDate: json['birthDate'] as String?,
      deathDate: json['deathDate'] as String?,
      gender: json['gender'] as String?,
      description: json['description'] as String?,
      fatherId: json['fatherId'] as String?,
      motherId: json['motherId'] as String?,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => Person.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      spouses: (json['spouses'] as List<dynamic>?)
              ?.map((e) => Person.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      father: json['father'] != null
          ? Person.fromJson(json['father'] as Map<String, dynamic>)
          : null,
      mother: json['mother'] != null
          ? Person.fromJson(json['mother'] as Map<String, dynamic>)
          : null,
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
      'fatherId': fatherId,
      'motherId': motherId,
      'children': children.map((e) => e.toJson()).toList(),
      'spouses': spouses.map((e) => e.toJson()).toList(),
      'father': father?.toJson(),
      'mother': mother?.toJson(),
    };
  }
}

class CreatePersonInput {
  final String name;
  final String? birthDate;
  final String? deathDate;
  final String? gender;
  final String? description;

  CreatePersonInput({
    required this.name,
    this.birthDate,
    this.deathDate,
    this.gender,
    this.description,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'birthDate': birthDate,
      'deathDate': deathDate,
      'gender': gender,
      'description': description,
    };
  }
}

class UpdatePersonInput {
  final String? name;
  final String? birthDate;
  final String? deathDate;
  final String? gender;
  final String? description;

  UpdatePersonInput({
    this.name,
    this.birthDate,
    this.deathDate,
    this.gender,
    this.description,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'birthDate': birthDate,
      'deathDate': deathDate,
      'gender': gender,
      'description': description,
    };
  }
}

enum RelationshipType {
  FATHER,
  MOTHER,
  SPOUSE,
}
