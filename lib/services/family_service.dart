import 'package:graphql_flutter/graphql_flutter.dart';
import 'graphql_service.dart';

class FamilyService {
  final GraphQLService _graphQLService;

  FamilyService(this._graphQLService);

  // 获取所有家族
  Future<QueryResult> getAllFamilies({int offset = 0, int limit = 10}) async {
    const String query = r'''
    query AllFamilies($offset: Int = 0, $limit: Int = 10) {
      allFamilies(offset: $offset, limit: $limit) {
        familyId
        familyCode
        name
        description
        location {
          id
          latitude
          longitude
          address
        }
      }
    }
    ''';

    return await _graphQLService.query(
      query: query,
      variables: {
        'offset': offset,
        'limit': limit,
      },
    );
  }

  // 获取单个家族
  Future<QueryResult> getFamily(String id) async {
    const String query = r'''
    query Family($id: ID!) {
      family(id: $id) {
        familyId
        familyCode
        name
        description
        location {
          id
          latitude
          longitude
          address
        }
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

  // 创建家族
  Future<QueryResult> createFamily({
    required String familyCode,
    required String name,
    String? description,
    String? locationId,
  }) async {
    const String mutation = r'''
    mutation CreateFamily($familyCode: String!, $name: String!, $description: String, $locationId: ID) {
      createFamily(familyCode: $familyCode, name: $name, description: $description, locationId: $locationId) {
        family {
          familyId
          familyCode
          name
          description
          location {
            id
            latitude
            longitude
            address
          }
        }
      }
    }
    ''';

    return await _graphQLService.mutate(
      mutation: mutation,
      variables: {
        'familyCode': familyCode,
        'name': name,
        if (description != null) 'description': description,
        if (locationId != null) 'locationId': locationId,
      },
    );
  }
}
