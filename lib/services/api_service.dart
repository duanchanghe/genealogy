import 'package:graphql_flutter/graphql_flutter.dart';
import '../config/app_config.dart';
import 'service_factory.dart';
import 'graphql_service.dart';
import 'user_service.dart';
import '../graphql/models/schema.graphql.dart';

class LoginResult {
  final String? token;
  final String? userId;
  final bool success;
  final String? error;

  LoginResult({
    this.token,
    this.userId,
    this.success = false,
    this.error,
  });
}

class ApiService {
  final ServiceFactory _serviceFactory = ServiceFactory.instance;

  ApiService();

  // 获取 GraphQL 服务
  GraphQLService get _graphQLService => _serviceFactory.graphqlService;

  // 获取用户服务
  UserService get _userService => _serviceFactory.userService;

  // 登录
  Future<LoginResult> login(String email, String password) async {
    // TODO: 实现实际的登录逻辑
    return LoginResult(
      token: 'mock_token',
      userId: 'mock_user_id',
      success: true,
    );
  }

  // 注册
  Future<LoginResult> register(
      String email, String password, String name) async {
    // TODO: 实现实际的注册逻辑
    return LoginResult(
      token: 'mock_token',
      userId: 'mock_user_id',
      success: true,
    );
  }

  // 使用手机号登录
  Future<LoginResult> loginWithPhone(String phone, String code) async {
    try {
      final result =
          await _userService.loginWithPhone(phone: phone, code: code);

      if (result.hasException) {
        throw result.exception!;
      }

      final data = result.data;
      if (data == null) {
        throw Exception('登录失败：返回数据为空');
      }

      final loginData = data['loginWithPhone'];
      if (loginData == null) {
        throw Exception('登录失败：返回数据格式错误');
      }

      final token = loginData['token'] as String?;
      final user = loginData['user'] as Map<String, dynamic>?;

      if (token == null || user == null) {
        throw Exception('登录失败：返回数据格式错误');
      }

      final userId = user['id'] as String?;
      if (userId == null) {
        throw Exception('登录失败：返回数据格式错误');
      }

      // 设置认证令牌
      _serviceFactory.setAuthToken(token);

      return LoginResult(
        token: token,
        userId: userId,
        success: true,
      );
    } catch (e) {
      return LoginResult(
        success: false,
        error: e.toString(),
      );
    }
  }

  // 使用手机号注册
  Future<LoginResult> registerWithPhone(
      String phone, String code, String name) async {
    try {
      final result = await _userService.registerWithPhone(
        phone: phone,
        code: code,
        password: name,
      );

      if (result.hasException) {
        throw result.exception!;
      }

      final data = result.data;
      if (data == null) {
        throw Exception('注册失败：返回数据为空');
      }

      final registerData = data['registerWithPhone'];
      if (registerData == null) {
        throw Exception('注册失败：返回数据格式错误');
      }

      final token = registerData['token'] as String?;
      final user = registerData['user'] as Map<String, dynamic>?;

      if (token == null || user == null) {
        throw Exception('注册失败：返回数据格式错误');
      }

      final userId = user['id'] as String?;
      if (userId == null) {
        throw Exception('注册失败：返回数据格式错误');
      }

      // 设置认证令牌
      _serviceFactory.setAuthToken(token);

      return LoginResult(
        token: token,
        userId: userId,
        success: true,
      );
    } catch (e) {
      return LoginResult(
        success: false,
        error: e.toString(),
      );
    }
  }

  // 登出
  Future<LoginResult> logout() async {
    try {
      await _userService.logout();

      // 清除认证令牌
      _serviceFactory.clearAuthToken();

      return LoginResult(
        success: true,
      );
    } catch (e) {
      return LoginResult(
        success: false,
        error: e.toString(),
      );
    }
  }

  Future<List<QueryResult<Object?>>> getUsers() async {
    try {
      final results = await _userService.getUsers();
      return results
          .map((result) => QueryResult(
                source: QueryResultSource.network,
                data: result,
                options: QueryOptions(document: gql('')),
              ))
          .toList();
    } catch (e) {
      throw Exception('Failed to load users: $e');
    }
  }
}
