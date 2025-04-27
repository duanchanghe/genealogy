// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPersons$Query$Persons$Father _$GetPersons$Query$Persons$FatherFromJson(
        Map<String, dynamic> json) =>
    GetPersons$Query$Persons$Father()
      ..id = json['id'] as String
      ..name = json['name'] as String;

Map<String, dynamic> _$GetPersons$Query$Persons$FatherToJson(
        GetPersons$Query$Persons$Father instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

GetPersons$Query$Persons$Mother _$GetPersons$Query$Persons$MotherFromJson(
        Map<String, dynamic> json) =>
    GetPersons$Query$Persons$Mother()
      ..id = json['id'] as String
      ..name = json['name'] as String;

Map<String, dynamic> _$GetPersons$Query$Persons$MotherToJson(
        GetPersons$Query$Persons$Mother instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

GetPersons$Query$Persons$Spouses _$GetPersons$Query$Persons$SpousesFromJson(
        Map<String, dynamic> json) =>
    GetPersons$Query$Persons$Spouses()
      ..id = json['id'] as String
      ..name = json['name'] as String;

Map<String, dynamic> _$GetPersons$Query$Persons$SpousesToJson(
        GetPersons$Query$Persons$Spouses instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

GetPersons$Query$Persons$Children _$GetPersons$Query$Persons$ChildrenFromJson(
        Map<String, dynamic> json) =>
    GetPersons$Query$Persons$Children()
      ..id = json['id'] as String
      ..name = json['name'] as String;

Map<String, dynamic> _$GetPersons$Query$Persons$ChildrenToJson(
        GetPersons$Query$Persons$Children instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

GetPersons$Query$Persons _$GetPersons$Query$PersonsFromJson(
        Map<String, dynamic> json) =>
    GetPersons$Query$Persons()
      ..id = json['id'] as String
      ..name = json['name'] as String
      ..birthDate = json['birthDate'] as String?
      ..deathDate = json['deathDate'] as String?
      ..gender = json['gender'] as String?
      ..description = json['description'] as String?
      ..father = json['father'] == null
          ? null
          : GetPersons$Query$Persons$Father.fromJson(
              json['father'] as Map<String, dynamic>)
      ..mother = json['mother'] == null
          ? null
          : GetPersons$Query$Persons$Mother.fromJson(
              json['mother'] as Map<String, dynamic>)
      ..spouses = (json['spouses'] as List<dynamic>)
          .map((e) => GetPersons$Query$Persons$Spouses.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..children = (json['children'] as List<dynamic>)
          .map((e) => GetPersons$Query$Persons$Children.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetPersons$Query$PersonsToJson(
        GetPersons$Query$Persons instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthDate': instance.birthDate,
      'deathDate': instance.deathDate,
      'gender': instance.gender,
      'description': instance.description,
      'father': instance.father?.toJson(),
      'mother': instance.mother?.toJson(),
      'spouses': instance.spouses.map((e) => e.toJson()).toList(),
      'children': instance.children.map((e) => e.toJson()).toList(),
    };

GetPersons$Query _$GetPersons$QueryFromJson(Map<String, dynamic> json) =>
    GetPersons$Query()
      ..persons = (json['persons'] as List<dynamic>)
          .map((e) =>
              GetPersons$Query$Persons.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetPersons$QueryToJson(GetPersons$Query instance) =>
    <String, dynamic>{
      'persons': instance.persons.map((e) => e.toJson()).toList(),
    };

CreatePerson$Mutation$CreatePerson$Father
    _$CreatePerson$Mutation$CreatePerson$FatherFromJson(
            Map<String, dynamic> json) =>
        CreatePerson$Mutation$CreatePerson$Father()
          ..id = json['id'] as String
          ..name = json['name'] as String;

Map<String, dynamic> _$CreatePerson$Mutation$CreatePerson$FatherToJson(
        CreatePerson$Mutation$CreatePerson$Father instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

CreatePerson$Mutation$CreatePerson$Mother
    _$CreatePerson$Mutation$CreatePerson$MotherFromJson(
            Map<String, dynamic> json) =>
        CreatePerson$Mutation$CreatePerson$Mother()
          ..id = json['id'] as String
          ..name = json['name'] as String;

Map<String, dynamic> _$CreatePerson$Mutation$CreatePerson$MotherToJson(
        CreatePerson$Mutation$CreatePerson$Mother instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

CreatePerson$Mutation$CreatePerson$Spouses
    _$CreatePerson$Mutation$CreatePerson$SpousesFromJson(
            Map<String, dynamic> json) =>
        CreatePerson$Mutation$CreatePerson$Spouses()
          ..id = json['id'] as String
          ..name = json['name'] as String;

Map<String, dynamic> _$CreatePerson$Mutation$CreatePerson$SpousesToJson(
        CreatePerson$Mutation$CreatePerson$Spouses instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

CreatePerson$Mutation$CreatePerson$Children
    _$CreatePerson$Mutation$CreatePerson$ChildrenFromJson(
            Map<String, dynamic> json) =>
        CreatePerson$Mutation$CreatePerson$Children()
          ..id = json['id'] as String
          ..name = json['name'] as String;

Map<String, dynamic> _$CreatePerson$Mutation$CreatePerson$ChildrenToJson(
        CreatePerson$Mutation$CreatePerson$Children instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

CreatePerson$Mutation$CreatePerson _$CreatePerson$Mutation$CreatePersonFromJson(
        Map<String, dynamic> json) =>
    CreatePerson$Mutation$CreatePerson()
      ..id = json['id'] as String
      ..name = json['name'] as String
      ..birthDate = json['birthDate'] as String?
      ..deathDate = json['deathDate'] as String?
      ..gender = json['gender'] as String?
      ..description = json['description'] as String?
      ..father = json['father'] == null
          ? null
          : CreatePerson$Mutation$CreatePerson$Father.fromJson(
              json['father'] as Map<String, dynamic>)
      ..mother = json['mother'] == null
          ? null
          : CreatePerson$Mutation$CreatePerson$Mother.fromJson(
              json['mother'] as Map<String, dynamic>)
      ..spouses = (json['spouses'] as List<dynamic>)
          .map((e) => CreatePerson$Mutation$CreatePerson$Spouses.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..children = (json['children'] as List<dynamic>)
          .map((e) => CreatePerson$Mutation$CreatePerson$Children.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CreatePerson$Mutation$CreatePersonToJson(
        CreatePerson$Mutation$CreatePerson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthDate': instance.birthDate,
      'deathDate': instance.deathDate,
      'gender': instance.gender,
      'description': instance.description,
      'father': instance.father?.toJson(),
      'mother': instance.mother?.toJson(),
      'spouses': instance.spouses.map((e) => e.toJson()).toList(),
      'children': instance.children.map((e) => e.toJson()).toList(),
    };

CreatePerson$Mutation _$CreatePerson$MutationFromJson(
        Map<String, dynamic> json) =>
    CreatePerson$Mutation()
      ..createPerson = CreatePerson$Mutation$CreatePerson.fromJson(
          json['createPerson'] as Map<String, dynamic>);

Map<String, dynamic> _$CreatePerson$MutationToJson(
        CreatePerson$Mutation instance) =>
    <String, dynamic>{
      'createPerson': instance.createPerson.toJson(),
    };

CreatePersonInput _$CreatePersonInputFromJson(Map<String, dynamic> json) =>
    CreatePersonInput(
      name: json['name'] as String,
      birthDate: json['birthDate'] as String?,
      deathDate: json['deathDate'] as String?,
      gender: json['gender'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CreatePersonInputToJson(CreatePersonInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birthDate': instance.birthDate,
      'deathDate': instance.deathDate,
      'gender': instance.gender,
      'description': instance.description,
    };

UpdatePerson$Mutation$UpdatePerson$Father
    _$UpdatePerson$Mutation$UpdatePerson$FatherFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$Mutation$UpdatePerson$Father()
          ..id = json['id'] as String
          ..name = json['name'] as String;

Map<String, dynamic> _$UpdatePerson$Mutation$UpdatePerson$FatherToJson(
        UpdatePerson$Mutation$UpdatePerson$Father instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

UpdatePerson$Mutation$UpdatePerson$Mother
    _$UpdatePerson$Mutation$UpdatePerson$MotherFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$Mutation$UpdatePerson$Mother()
          ..id = json['id'] as String
          ..name = json['name'] as String;

Map<String, dynamic> _$UpdatePerson$Mutation$UpdatePerson$MotherToJson(
        UpdatePerson$Mutation$UpdatePerson$Mother instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

UpdatePerson$Mutation$UpdatePerson$Spouses
    _$UpdatePerson$Mutation$UpdatePerson$SpousesFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$Mutation$UpdatePerson$Spouses()
          ..id = json['id'] as String
          ..name = json['name'] as String;

Map<String, dynamic> _$UpdatePerson$Mutation$UpdatePerson$SpousesToJson(
        UpdatePerson$Mutation$UpdatePerson$Spouses instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

UpdatePerson$Mutation$UpdatePerson$Children
    _$UpdatePerson$Mutation$UpdatePerson$ChildrenFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$Mutation$UpdatePerson$Children()
          ..id = json['id'] as String
          ..name = json['name'] as String;

Map<String, dynamic> _$UpdatePerson$Mutation$UpdatePerson$ChildrenToJson(
        UpdatePerson$Mutation$UpdatePerson$Children instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

UpdatePerson$Mutation$UpdatePerson _$UpdatePerson$Mutation$UpdatePersonFromJson(
        Map<String, dynamic> json) =>
    UpdatePerson$Mutation$UpdatePerson()
      ..id = json['id'] as String
      ..name = json['name'] as String
      ..birthDate = json['birthDate'] as String?
      ..deathDate = json['deathDate'] as String?
      ..gender = json['gender'] as String?
      ..description = json['description'] as String?
      ..father = json['father'] == null
          ? null
          : UpdatePerson$Mutation$UpdatePerson$Father.fromJson(
              json['father'] as Map<String, dynamic>)
      ..mother = json['mother'] == null
          ? null
          : UpdatePerson$Mutation$UpdatePerson$Mother.fromJson(
              json['mother'] as Map<String, dynamic>)
      ..spouses = (json['spouses'] as List<dynamic>)
          .map((e) => UpdatePerson$Mutation$UpdatePerson$Spouses.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..children = (json['children'] as List<dynamic>)
          .map((e) => UpdatePerson$Mutation$UpdatePerson$Children.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$UpdatePerson$Mutation$UpdatePersonToJson(
        UpdatePerson$Mutation$UpdatePerson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthDate': instance.birthDate,
      'deathDate': instance.deathDate,
      'gender': instance.gender,
      'description': instance.description,
      'father': instance.father?.toJson(),
      'mother': instance.mother?.toJson(),
      'spouses': instance.spouses.map((e) => e.toJson()).toList(),
      'children': instance.children.map((e) => e.toJson()).toList(),
    };

UpdatePerson$Mutation _$UpdatePerson$MutationFromJson(
        Map<String, dynamic> json) =>
    UpdatePerson$Mutation()
      ..updatePerson = UpdatePerson$Mutation$UpdatePerson.fromJson(
          json['updatePerson'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdatePerson$MutationToJson(
        UpdatePerson$Mutation instance) =>
    <String, dynamic>{
      'updatePerson': instance.updatePerson.toJson(),
    };

UpdatePersonInput _$UpdatePersonInputFromJson(Map<String, dynamic> json) =>
    UpdatePersonInput(
      name: json['name'] as String?,
      birthDate: json['birthDate'] as String?,
      deathDate: json['deathDate'] as String?,
      gender: json['gender'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$UpdatePersonInputToJson(UpdatePersonInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birthDate': instance.birthDate,
      'deathDate': instance.deathDate,
      'gender': instance.gender,
      'description': instance.description,
    };

DeletePerson$Mutation _$DeletePerson$MutationFromJson(
        Map<String, dynamic> json) =>
    DeletePerson$Mutation()..deletePerson = json['deletePerson'] as bool;

Map<String, dynamic> _$DeletePerson$MutationToJson(
        DeletePerson$Mutation instance) =>
    <String, dynamic>{
      'deletePerson': instance.deletePerson,
    };

AddRelationship$Mutation$AddRelationship$Father
    _$AddRelationship$Mutation$AddRelationship$FatherFromJson(
            Map<String, dynamic> json) =>
        AddRelationship$Mutation$AddRelationship$Father()
          ..id = json['id'] as String
          ..name = json['name'] as String;

Map<String, dynamic> _$AddRelationship$Mutation$AddRelationship$FatherToJson(
        AddRelationship$Mutation$AddRelationship$Father instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

AddRelationship$Mutation$AddRelationship$Mother
    _$AddRelationship$Mutation$AddRelationship$MotherFromJson(
            Map<String, dynamic> json) =>
        AddRelationship$Mutation$AddRelationship$Mother()
          ..id = json['id'] as String
          ..name = json['name'] as String;

Map<String, dynamic> _$AddRelationship$Mutation$AddRelationship$MotherToJson(
        AddRelationship$Mutation$AddRelationship$Mother instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

AddRelationship$Mutation$AddRelationship$Spouses
    _$AddRelationship$Mutation$AddRelationship$SpousesFromJson(
            Map<String, dynamic> json) =>
        AddRelationship$Mutation$AddRelationship$Spouses()
          ..id = json['id'] as String
          ..name = json['name'] as String;

Map<String, dynamic> _$AddRelationship$Mutation$AddRelationship$SpousesToJson(
        AddRelationship$Mutation$AddRelationship$Spouses instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

AddRelationship$Mutation$AddRelationship$Children
    _$AddRelationship$Mutation$AddRelationship$ChildrenFromJson(
            Map<String, dynamic> json) =>
        AddRelationship$Mutation$AddRelationship$Children()
          ..id = json['id'] as String
          ..name = json['name'] as String;

Map<String, dynamic> _$AddRelationship$Mutation$AddRelationship$ChildrenToJson(
        AddRelationship$Mutation$AddRelationship$Children instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

AddRelationship$Mutation$AddRelationship
    _$AddRelationship$Mutation$AddRelationshipFromJson(
            Map<String, dynamic> json) =>
        AddRelationship$Mutation$AddRelationship()
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..father = json['father'] == null
              ? null
              : AddRelationship$Mutation$AddRelationship$Father.fromJson(
                  json['father'] as Map<String, dynamic>)
          ..mother = json['mother'] == null
              ? null
              : AddRelationship$Mutation$AddRelationship$Mother.fromJson(
                  json['mother'] as Map<String, dynamic>)
          ..spouses = (json['spouses'] as List<dynamic>)
              .map((e) =>
                  AddRelationship$Mutation$AddRelationship$Spouses.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..children = (json['children'] as List<dynamic>)
              .map((e) =>
                  AddRelationship$Mutation$AddRelationship$Children.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$AddRelationship$Mutation$AddRelationshipToJson(
        AddRelationship$Mutation$AddRelationship instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'father': instance.father?.toJson(),
      'mother': instance.mother?.toJson(),
      'spouses': instance.spouses.map((e) => e.toJson()).toList(),
      'children': instance.children.map((e) => e.toJson()).toList(),
    };

AddRelationship$Mutation _$AddRelationship$MutationFromJson(
        Map<String, dynamic> json) =>
    AddRelationship$Mutation()
      ..addRelationship = AddRelationship$Mutation$AddRelationship.fromJson(
          json['addRelationship'] as Map<String, dynamic>);

Map<String, dynamic> _$AddRelationship$MutationToJson(
        AddRelationship$Mutation instance) =>
    <String, dynamic>{
      'addRelationship': instance.addRelationship.toJson(),
    };

CreatePersonArguments _$CreatePersonArgumentsFromJson(
        Map<String, dynamic> json) =>
    CreatePersonArguments(
      input: CreatePersonInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatePersonArgumentsToJson(
        CreatePersonArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

UpdatePersonArguments _$UpdatePersonArgumentsFromJson(
        Map<String, dynamic> json) =>
    UpdatePersonArguments(
      id: json['id'] as String,
      input: UpdatePersonInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdatePersonArgumentsToJson(
        UpdatePersonArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'input': instance.input.toJson(),
    };

DeletePersonArguments _$DeletePersonArgumentsFromJson(
        Map<String, dynamic> json) =>
    DeletePersonArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$DeletePersonArgumentsToJson(
        DeletePersonArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

AddRelationshipArguments _$AddRelationshipArgumentsFromJson(
        Map<String, dynamic> json) =>
    AddRelationshipArguments(
      personId: json['personId'] as String,
      relatedPersonId: json['relatedPersonId'] as String,
      relationshipType: $enumDecode(
          _$RelationshipTypeEnumMap, json['relationshipType'],
          unknownValue: RelationshipType.artemisUnknown),
    );

Map<String, dynamic> _$AddRelationshipArgumentsToJson(
        AddRelationshipArguments instance) =>
    <String, dynamic>{
      'personId': instance.personId,
      'relatedPersonId': instance.relatedPersonId,
      'relationshipType': _$RelationshipTypeEnumMap[instance.relationshipType]!,
    };

const _$RelationshipTypeEnumMap = {
  RelationshipType.father: 'FATHER',
  RelationshipType.mother: 'MOTHER',
  RelationshipType.spouse: 'SPOUSE',
  RelationshipType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};
