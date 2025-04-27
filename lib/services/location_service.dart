import 'package:graphql_flutter/graphql_flutter.dart';
import 'graphql_service.dart';

class LocationService {
  final GraphQLService _graphQLService;

  LocationService(this._graphQLService);

  // 获取所有位置
  Future<QueryResult> getAllLocations({int offset = 0, int limit = 10}) async {
    const String query = r'''
    query AllLocations($offset: Int = 0, $limit: Int = 10) {
      allLocations(offset: $offset, limit: $limit) {
        id
        latitude
        longitude
        address
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

  // 获取单个位置
  Future<QueryResult> getLocation(String id) async {
    const String query = r'''
    query Location($id: ID!) {
      location(id: $id) {
        id
        latitude
        longitude
        address
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

  // 创建位置
  Future<QueryResult> createLocation({
    required String latitude,
    required String longitude,
    String? address,
  }) async {
    const String mutation = r'''
    mutation CreateLocation($latitude: Decimal!, $longitude: Decimal!, $address: String) {
      createLocation(latitude: $latitude, longitude: $longitude, address: $address) {
        location {
          id
          latitude
          longitude
          address
        }
      }
    }
    ''';

    return await _graphQLService.mutate(
      mutation: mutation,
      variables: {
        'latitude': latitude,
        'longitude': longitude,
        if (address != null) 'address': address,
      },
    );
  }
}
