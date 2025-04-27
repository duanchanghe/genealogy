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
    const String query = r'''
      query GetPersons {
        persons {
          id
          name
          birthDate
          deathDate
          gender
          description
        }
      }
    ''';

    final QueryResult result = await _client.query(
      QueryOptions(document: gql(query)),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    final List<dynamic> personsJson = result.data?['persons'] ?? [];
    return personsJson.map((json) => Person.fromJson(json)).toList();
  }
} 