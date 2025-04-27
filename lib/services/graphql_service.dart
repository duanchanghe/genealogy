import 'package:graphql_flutter/graphql_flutter.dart';
import '../config/app_config.dart';

class GraphQLService {
  late GraphQLClient _client;

  GraphQLService() {
    _initClient();
  }

  // 初始化客户端
  void _initClient() {
    _client = GraphQLClient(
      link: HttpLink(AppConfig.apiBaseUrl),
      cache: GraphQLCache(),
    );
  }

  // 获取 GraphQL 客户端
  GraphQLClient get client => _client;

  // 执行查询
  Future<QueryResult> query({
    required String query,
    Map<String, dynamic>? variables,
    FetchPolicy? fetchPolicy,
  }) async {
    final options = QueryOptions(
      document: gql(query),
      variables: variables ?? {},
      fetchPolicy: fetchPolicy ?? FetchPolicy.noCache,
    );

    return await _client.query(options);
  }

  // 执行变更
  Future<QueryResult> mutate({
    required String mutation,
    Map<String, dynamic>? variables,
    FetchPolicy? fetchPolicy,
  }) async {
    final options = MutationOptions(
      document: gql(mutation),
      variables: variables ?? {},
      fetchPolicy: fetchPolicy ?? FetchPolicy.noCache,
    );

    return await _client.mutate(options);
  }

  // 设置认证令牌
  void setAuthToken(String token) {
    final authLink = AuthLink(
      getToken: () async => 'Bearer $token',
    );

    final httpLink = HttpLink(AppConfig.apiBaseUrl);
    final link = authLink.concat(httpLink);

    // 创建新的客户端实例
    _client = GraphQLClient(
      link: link,
      cache: GraphQLCache(),
    );
  }

  // 清除认证令牌
  void clearAuthToken() {
    // 重新初始化客户端
    _initClient();
  }
}
