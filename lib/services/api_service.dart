import 'package:graphql_flutter/graphql_flutter.dart';
import '../config/app_config.dart';
import '../models/person.dart';

class ApiService {
  final GraphQLClient _client;

  ApiService()
      : _client = GraphQLClient(
          link: HttpLink(AppConfig.apiBaseUrl),
          cache: GraphQLCache(),
        );

  Future<List<Person>> getPersons() async {
    const String query =
        r'''
      query GetPersons {
        persons {
          id
          name
          birthDate
          deathDate
          gender
          description
          father {
            id
            name
          }
          mother {
            id
            name
          }
          spouses {
            id
            name
          }
          children {
            id
            name
          }
        }
      }
    ''';

    final result = await _client.query(
      QueryOptions(document: gql(query)),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    final List<dynamic> personsData = result.data!['persons'] as List<dynamic>;
    return personsData.map((json) => Person.fromJson(json)).toList();
  }

  Future<Person> createPerson(CreatePersonInput input) async {
    const String mutation =
        r'''
      mutation CreatePerson($input: CreatePersonInput!) {
        createPerson(input: $input) {
          id
          name
          birthDate
          deathDate
          gender
          description
          father {
            id
            name
          }
          mother {
            id
            name
          }
          spouses {
            id
            name
          }
          children {
            id
            name
          }
        }
      }
    ''';

    final result = await _client.mutate(
      MutationOptions(
        document: gql(mutation),
        variables: {
          'input': {
            'name': input.name,
            'birthDate': input.birthDate,
            'deathDate': input.deathDate,
            'gender': input.gender,
            'description': input.description,
          },
        },
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return Person.fromJson(result.data!['createPerson']);
  }

  Future<Person> updatePerson(String id, UpdatePersonInput input) async {
    const String mutation =
        r'''
      mutation UpdatePerson($id: ID!, $input: UpdatePersonInput!) {
        updatePerson(id: $id, input: $input) {
          id
          name
          birthDate
          deathDate
          gender
          description
          father {
            id
            name
          }
          mother {
            id
            name
          }
          spouses {
            id
            name
          }
          children {
            id
            name
          }
        }
      }
    ''';

    final result = await _client.mutate(
      MutationOptions(
        document: gql(mutation),
        variables: {
          'id': id,
          'input': {
            'name': input.name,
            'birthDate': input.birthDate,
            'deathDate': input.deathDate,
            'gender': input.gender,
            'description': input.description,
          },
        },
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return Person.fromJson(result.data!['updatePerson']);
  }

  Future<bool> deletePerson(String id) async {
    const String mutation =
        r'''
      mutation DeletePerson($id: ID!) {
        deletePerson(id: $id)
      }
    ''';

    final result = await _client.mutate(
      MutationOptions(
        document: gql(mutation),
        variables: {'id': id},
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return result.data!['deletePerson'] as bool;
  }

  Future<Person> addRelationship(
      String personId, String relatedPersonId, RelationshipType type) async {
    const String mutation =
        r'''
      mutation AddRelationship($personId: ID!, $relatedPersonId: ID!, $relationshipType: RelationshipType!) {
        addRelationship(personId: $personId, relatedPersonId: $relatedPersonId, relationshipType: $relationshipType) {
          id
          name
          father {
            id
            name
          }
          mother {
            id
            name
          }
          spouses {
            id
            name
          }
          children {
            id
            name
          }
        }
      }
    ''';

    final result = await _client.mutate(
      MutationOptions(
        document: gql(mutation),
        variables: {
          'personId': personId,
          'relatedPersonId': relatedPersonId,
          'relationshipType': type.toString().split('.').last,
        },
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return Person.fromJson(result.data!['addRelationship']);
  }
}
