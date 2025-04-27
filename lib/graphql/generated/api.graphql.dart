// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GetPersons$Query$Persons$Father extends JsonSerializable
    with EquatableMixin {
  GetPersons$Query$Persons$Father();

  factory GetPersons$Query$Persons$Father.fromJson(Map<String, dynamic> json) =>
      _$GetPersons$Query$Persons$FatherFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$GetPersons$Query$Persons$FatherToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersons$Query$Persons$Mother extends JsonSerializable
    with EquatableMixin {
  GetPersons$Query$Persons$Mother();

  factory GetPersons$Query$Persons$Mother.fromJson(Map<String, dynamic> json) =>
      _$GetPersons$Query$Persons$MotherFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$GetPersons$Query$Persons$MotherToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersons$Query$Persons$Spouses extends JsonSerializable
    with EquatableMixin {
  GetPersons$Query$Persons$Spouses();

  factory GetPersons$Query$Persons$Spouses.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersons$Query$Persons$SpousesFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$GetPersons$Query$Persons$SpousesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersons$Query$Persons$Children extends JsonSerializable
    with EquatableMixin {
  GetPersons$Query$Persons$Children();

  factory GetPersons$Query$Persons$Children.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersons$Query$Persons$ChildrenFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$GetPersons$Query$Persons$ChildrenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersons$Query$Persons extends JsonSerializable with EquatableMixin {
  GetPersons$Query$Persons();

  factory GetPersons$Query$Persons.fromJson(Map<String, dynamic> json) =>
      _$GetPersons$Query$PersonsFromJson(json);

  late String id;

  late String name;

  String? birthDate;

  String? deathDate;

  String? gender;

  String? description;

  GetPersons$Query$Persons$Father? father;

  GetPersons$Query$Persons$Mother? mother;

  late List<GetPersons$Query$Persons$Spouses> spouses;

  late List<GetPersons$Query$Persons$Children> children;

  @override
  List<Object?> get props => [
        id,
        name,
        birthDate,
        deathDate,
        gender,
        description,
        father,
        mother,
        spouses,
        children
      ];

  @override
  Map<String, dynamic> toJson() => _$GetPersons$Query$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersons$Query extends JsonSerializable with EquatableMixin {
  GetPersons$Query();

  factory GetPersons$Query.fromJson(Map<String, dynamic> json) =>
      _$GetPersons$QueryFromJson(json);

  late List<GetPersons$Query$Persons> persons;

  @override
  List<Object?> get props => [persons];

  @override
  Map<String, dynamic> toJson() => _$GetPersons$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreatePerson$Mutation$CreatePerson$Father extends JsonSerializable
    with EquatableMixin {
  CreatePerson$Mutation$CreatePerson$Father();

  factory CreatePerson$Mutation$CreatePerson$Father.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePerson$Mutation$CreatePerson$FatherFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$CreatePerson$Mutation$CreatePerson$FatherToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreatePerson$Mutation$CreatePerson$Mother extends JsonSerializable
    with EquatableMixin {
  CreatePerson$Mutation$CreatePerson$Mother();

  factory CreatePerson$Mutation$CreatePerson$Mother.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePerson$Mutation$CreatePerson$MotherFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$CreatePerson$Mutation$CreatePerson$MotherToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreatePerson$Mutation$CreatePerson$Spouses extends JsonSerializable
    with EquatableMixin {
  CreatePerson$Mutation$CreatePerson$Spouses();

  factory CreatePerson$Mutation$CreatePerson$Spouses.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePerson$Mutation$CreatePerson$SpousesFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$CreatePerson$Mutation$CreatePerson$SpousesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreatePerson$Mutation$CreatePerson$Children extends JsonSerializable
    with EquatableMixin {
  CreatePerson$Mutation$CreatePerson$Children();

  factory CreatePerson$Mutation$CreatePerson$Children.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePerson$Mutation$CreatePerson$ChildrenFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$CreatePerson$Mutation$CreatePerson$ChildrenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreatePerson$Mutation$CreatePerson extends JsonSerializable
    with EquatableMixin {
  CreatePerson$Mutation$CreatePerson();

  factory CreatePerson$Mutation$CreatePerson.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePerson$Mutation$CreatePersonFromJson(json);

  late String id;

  late String name;

  String? birthDate;

  String? deathDate;

  String? gender;

  String? description;

  CreatePerson$Mutation$CreatePerson$Father? father;

  CreatePerson$Mutation$CreatePerson$Mother? mother;

  late List<CreatePerson$Mutation$CreatePerson$Spouses> spouses;

  late List<CreatePerson$Mutation$CreatePerson$Children> children;

  @override
  List<Object?> get props => [
        id,
        name,
        birthDate,
        deathDate,
        gender,
        description,
        father,
        mother,
        spouses,
        children
      ];

  @override
  Map<String, dynamic> toJson() =>
      _$CreatePerson$Mutation$CreatePersonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreatePerson$Mutation extends JsonSerializable with EquatableMixin {
  CreatePerson$Mutation();

  factory CreatePerson$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreatePerson$MutationFromJson(json);

  late CreatePerson$Mutation$CreatePerson createPerson;

  @override
  List<Object?> get props => [createPerson];

  @override
  Map<String, dynamic> toJson() => _$CreatePerson$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreatePersonInput extends JsonSerializable with EquatableMixin {
  CreatePersonInput({
    required this.name,
    this.birthDate,
    this.deathDate,
    this.gender,
    this.description,
  });

  factory CreatePersonInput.fromJson(Map<String, dynamic> json) =>
      _$CreatePersonInputFromJson(json);

  late String name;

  String? birthDate;

  String? deathDate;

  String? gender;

  String? description;

  @override
  List<Object?> get props => [name, birthDate, deathDate, gender, description];

  @override
  Map<String, dynamic> toJson() => _$CreatePersonInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$Mutation$UpdatePerson$Father extends JsonSerializable
    with EquatableMixin {
  UpdatePerson$Mutation$UpdatePerson$Father();

  factory UpdatePerson$Mutation$UpdatePerson$Father.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$Mutation$UpdatePerson$FatherFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$Mutation$UpdatePerson$FatherToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$Mutation$UpdatePerson$Mother extends JsonSerializable
    with EquatableMixin {
  UpdatePerson$Mutation$UpdatePerson$Mother();

  factory UpdatePerson$Mutation$UpdatePerson$Mother.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$Mutation$UpdatePerson$MotherFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$Mutation$UpdatePerson$MotherToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$Mutation$UpdatePerson$Spouses extends JsonSerializable
    with EquatableMixin {
  UpdatePerson$Mutation$UpdatePerson$Spouses();

  factory UpdatePerson$Mutation$UpdatePerson$Spouses.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$Mutation$UpdatePerson$SpousesFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$Mutation$UpdatePerson$SpousesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$Mutation$UpdatePerson$Children extends JsonSerializable
    with EquatableMixin {
  UpdatePerson$Mutation$UpdatePerson$Children();

  factory UpdatePerson$Mutation$UpdatePerson$Children.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$Mutation$UpdatePerson$ChildrenFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$Mutation$UpdatePerson$ChildrenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$Mutation$UpdatePerson extends JsonSerializable
    with EquatableMixin {
  UpdatePerson$Mutation$UpdatePerson();

  factory UpdatePerson$Mutation$UpdatePerson.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$Mutation$UpdatePersonFromJson(json);

  late String id;

  late String name;

  String? birthDate;

  String? deathDate;

  String? gender;

  String? description;

  UpdatePerson$Mutation$UpdatePerson$Father? father;

  UpdatePerson$Mutation$UpdatePerson$Mother? mother;

  late List<UpdatePerson$Mutation$UpdatePerson$Spouses> spouses;

  late List<UpdatePerson$Mutation$UpdatePerson$Children> children;

  @override
  List<Object?> get props => [
        id,
        name,
        birthDate,
        deathDate,
        gender,
        description,
        father,
        mother,
        spouses,
        children
      ];

  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$Mutation$UpdatePersonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$Mutation extends JsonSerializable with EquatableMixin {
  UpdatePerson$Mutation();

  factory UpdatePerson$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdatePerson$MutationFromJson(json);

  late UpdatePerson$Mutation$UpdatePerson updatePerson;

  @override
  List<Object?> get props => [updatePerson];

  @override
  Map<String, dynamic> toJson() => _$UpdatePerson$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePersonInput extends JsonSerializable with EquatableMixin {
  UpdatePersonInput({
    this.name,
    this.birthDate,
    this.deathDate,
    this.gender,
    this.description,
  });

  factory UpdatePersonInput.fromJson(Map<String, dynamic> json) =>
      _$UpdatePersonInputFromJson(json);

  String? name;

  String? birthDate;

  String? deathDate;

  String? gender;

  String? description;

  @override
  List<Object?> get props => [name, birthDate, deathDate, gender, description];

  @override
  Map<String, dynamic> toJson() => _$UpdatePersonInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeletePerson$Mutation extends JsonSerializable with EquatableMixin {
  DeletePerson$Mutation();

  factory DeletePerson$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeletePerson$MutationFromJson(json);

  late bool deletePerson;

  @override
  List<Object?> get props => [deletePerson];

  @override
  Map<String, dynamic> toJson() => _$DeletePerson$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddRelationship$Mutation$AddRelationship$Father extends JsonSerializable
    with EquatableMixin {
  AddRelationship$Mutation$AddRelationship$Father();

  factory AddRelationship$Mutation$AddRelationship$Father.fromJson(
          Map<String, dynamic> json) =>
      _$AddRelationship$Mutation$AddRelationship$FatherFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$AddRelationship$Mutation$AddRelationship$FatherToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddRelationship$Mutation$AddRelationship$Mother extends JsonSerializable
    with EquatableMixin {
  AddRelationship$Mutation$AddRelationship$Mother();

  factory AddRelationship$Mutation$AddRelationship$Mother.fromJson(
          Map<String, dynamic> json) =>
      _$AddRelationship$Mutation$AddRelationship$MotherFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$AddRelationship$Mutation$AddRelationship$MotherToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddRelationship$Mutation$AddRelationship$Spouses extends JsonSerializable
    with EquatableMixin {
  AddRelationship$Mutation$AddRelationship$Spouses();

  factory AddRelationship$Mutation$AddRelationship$Spouses.fromJson(
          Map<String, dynamic> json) =>
      _$AddRelationship$Mutation$AddRelationship$SpousesFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$AddRelationship$Mutation$AddRelationship$SpousesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddRelationship$Mutation$AddRelationship$Children extends JsonSerializable
    with EquatableMixin {
  AddRelationship$Mutation$AddRelationship$Children();

  factory AddRelationship$Mutation$AddRelationship$Children.fromJson(
          Map<String, dynamic> json) =>
      _$AddRelationship$Mutation$AddRelationship$ChildrenFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$AddRelationship$Mutation$AddRelationship$ChildrenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddRelationship$Mutation$AddRelationship extends JsonSerializable
    with EquatableMixin {
  AddRelationship$Mutation$AddRelationship();

  factory AddRelationship$Mutation$AddRelationship.fromJson(
          Map<String, dynamic> json) =>
      _$AddRelationship$Mutation$AddRelationshipFromJson(json);

  late String id;

  late String name;

  AddRelationship$Mutation$AddRelationship$Father? father;

  AddRelationship$Mutation$AddRelationship$Mother? mother;

  late List<AddRelationship$Mutation$AddRelationship$Spouses> spouses;

  late List<AddRelationship$Mutation$AddRelationship$Children> children;

  @override
  List<Object?> get props => [id, name, father, mother, spouses, children];

  @override
  Map<String, dynamic> toJson() =>
      _$AddRelationship$Mutation$AddRelationshipToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddRelationship$Mutation extends JsonSerializable with EquatableMixin {
  AddRelationship$Mutation();

  factory AddRelationship$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddRelationship$MutationFromJson(json);

  late AddRelationship$Mutation$AddRelationship addRelationship;

  @override
  List<Object?> get props => [addRelationship];

  @override
  Map<String, dynamic> toJson() => _$AddRelationship$MutationToJson(this);
}

enum RelationshipType {
  @JsonValue('FATHER')
  father,
  @JsonValue('MOTHER')
  mother,
  @JsonValue('SPOUSE')
  spouse,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

final GET_PERSONS_QUERY_DOCUMENT_OPERATION_NAME = 'GetPersons';
final GET_PERSONS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPersons'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'persons'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'birthDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deathDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'father'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'mother'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'spouses'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'children'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      )
    ]),
  )
]);

class GetPersonsQuery extends GraphQLQuery<GetPersons$Query, JsonSerializable> {
  GetPersonsQuery();

  @override
  final DocumentNode document = GET_PERSONS_QUERY_DOCUMENT;

  @override
  final String operationName = GET_PERSONS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];

  @override
  GetPersons$Query parse(Map<String, dynamic> json) =>
      GetPersons$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreatePersonArguments extends JsonSerializable with EquatableMixin {
  CreatePersonArguments({required this.input});

  @override
  factory CreatePersonArguments.fromJson(Map<String, dynamic> json) =>
      _$CreatePersonArgumentsFromJson(json);

  late CreatePersonInput input;

  @override
  List<Object?> get props => [input];

  @override
  Map<String, dynamic> toJson() => _$CreatePersonArgumentsToJson(this);
}

final CREATE_PERSON_MUTATION_DOCUMENT_OPERATION_NAME = 'CreatePerson';
final CREATE_PERSON_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreatePerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreatePersonInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createPerson'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'birthDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deathDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'father'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'mother'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'spouses'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'children'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      )
    ]),
  )
]);

class CreatePersonMutation
    extends GraphQLQuery<CreatePerson$Mutation, CreatePersonArguments> {
  CreatePersonMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_PERSON_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_PERSON_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreatePersonArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  CreatePerson$Mutation parse(Map<String, dynamic> json) =>
      CreatePerson$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdatePersonArguments extends JsonSerializable with EquatableMixin {
  UpdatePersonArguments({
    required this.id,
    required this.input,
  });

  @override
  factory UpdatePersonArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdatePersonArgumentsFromJson(json);

  late String id;

  late UpdatePersonInput input;

  @override
  List<Object?> get props => [id, input];

  @override
  Map<String, dynamic> toJson() => _$UpdatePersonArgumentsToJson(this);
}

final UPDATE_PERSON_MUTATION_DOCUMENT_OPERATION_NAME = 'UpdatePerson';
final UPDATE_PERSON_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdatePerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdatePersonInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updatePerson'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'birthDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deathDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'father'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'mother'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'spouses'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'children'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      )
    ]),
  )
]);

class UpdatePersonMutation
    extends GraphQLQuery<UpdatePerson$Mutation, UpdatePersonArguments> {
  UpdatePersonMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_PERSON_MUTATION_DOCUMENT;

  @override
  final String operationName = UPDATE_PERSON_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpdatePersonArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  UpdatePerson$Mutation parse(Map<String, dynamic> json) =>
      UpdatePerson$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeletePersonArguments extends JsonSerializable with EquatableMixin {
  DeletePersonArguments({required this.id});

  @override
  factory DeletePersonArguments.fromJson(Map<String, dynamic> json) =>
      _$DeletePersonArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() => _$DeletePersonArgumentsToJson(this);
}

final DELETE_PERSON_MUTATION_DOCUMENT_OPERATION_NAME = 'DeletePerson';
final DELETE_PERSON_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeletePerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deletePerson'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  )
]);

class DeletePersonMutation
    extends GraphQLQuery<DeletePerson$Mutation, DeletePersonArguments> {
  DeletePersonMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_PERSON_MUTATION_DOCUMENT;

  @override
  final String operationName = DELETE_PERSON_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final DeletePersonArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  DeletePerson$Mutation parse(Map<String, dynamic> json) =>
      DeletePerson$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AddRelationshipArguments extends JsonSerializable with EquatableMixin {
  AddRelationshipArguments({
    required this.personId,
    required this.relatedPersonId,
    required this.relationshipType,
  });

  @override
  factory AddRelationshipArguments.fromJson(Map<String, dynamic> json) =>
      _$AddRelationshipArgumentsFromJson(json);

  late String personId;

  late String relatedPersonId;

  @JsonKey(unknownEnumValue: RelationshipType.artemisUnknown)
  late RelationshipType relationshipType;

  @override
  List<Object?> get props => [personId, relatedPersonId, relationshipType];

  @override
  Map<String, dynamic> toJson() => _$AddRelationshipArgumentsToJson(this);
}

final ADD_RELATIONSHIP_MUTATION_DOCUMENT_OPERATION_NAME = 'AddRelationship';
final ADD_RELATIONSHIP_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AddRelationship'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'relatedPersonId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'relationshipType')),
        type: NamedTypeNode(
          name: NameNode(value: 'RelationshipType'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'addRelationship'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'personId'),
            value: VariableNode(name: NameNode(value: 'personId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'relatedPersonId'),
            value: VariableNode(name: NameNode(value: 'relatedPersonId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'relationshipType'),
            value: VariableNode(name: NameNode(value: 'relationshipType')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'father'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'mother'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'spouses'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'children'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      )
    ]),
  )
]);

class AddRelationshipMutation
    extends GraphQLQuery<AddRelationship$Mutation, AddRelationshipArguments> {
  AddRelationshipMutation({required this.variables});

  @override
  final DocumentNode document = ADD_RELATIONSHIP_MUTATION_DOCUMENT;

  @override
  final String operationName =
      ADD_RELATIONSHIP_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AddRelationshipArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  AddRelationship$Mutation parse(Map<String, dynamic> json) =>
      AddRelationship$Mutation.fromJson(json);
}
