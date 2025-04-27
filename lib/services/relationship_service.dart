import 'package:graphql_flutter/graphql_flutter.dart';
import 'graphql_service.dart';

class RelationshipService {
  final GraphQLService _graphQLService;

  RelationshipService(this._graphQLService);

  // 获取所有关系
  Future<QueryResult> getAllRelationships({
    required String userId,
    int offset = 0,
    int limit = 10,
  }) async {
    const String query = r'''
    query AllRelationships($userId: ID!, $offset: Int = 0, $limit: Int = 10) {
      allRelationships(userId: $userId, offset: $offset, limit: $limit) {
        relationshipType
      }
    }
    ''';

    return await _graphQLService.query(
      query: query,
      variables: {
        'userId': userId,
        'offset': offset,
        'limit': limit,
      },
    );
  }

  // 获取单个关系
  Future<QueryResult> getRelationship(String id) async {
    const String query = r'''
    query Relationship($id: ID!) {
      relationship(id: $id) {
        relationshipType
      }
    }
    ''';

    return await _graphQLService.query(
      query: query,
      variables: {
        'id': id,
      },
    );
  }
}
