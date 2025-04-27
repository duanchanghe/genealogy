import 'package:graphql_flutter/graphql_flutter.dart';
import 'graphql_service.dart';
import '../graphql/models/schema.graphql.dart';

class UserService {
  final GraphQLService _graphQLService;

  UserService(this._graphQLService);

  // 获取所有用户
  Future<QueryResult<Object?>> getAllUsers(
      {int offset = 0, int limit = 10}) async {
    const String query = r'''
    query AllUsers($offset: Int = 0, $limit: Int = 10) {
      allUsers(offset: $offset, limit: $limit) {
        id
        username
        firstName
        lastName
        email
        isStaff
        isActive
        dateJoined
        birthDate
        deathDate
        milkName
        birthPlace {
          id
          latitude
          longitude
          address
        }
        burialPlace {
          id
          latitude
          longitude
          address
        }
        phone
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
        gender
      }
    }
    ''';

    final result = await _graphQLService.query(
      query: query,
      variables: {
        'offset': offset,
        'limit': limit,
      },
    );

    if (result.hasException) {
      return QueryResult(
        source: QueryResultSource.network,
        data: null,
        options: QueryOptions(document: gql(query)),
        exception: result.exception,
      );
    }

    // 将原始数据转换为Users$Query对象
    final usersQuery =
        result.data != null ? Users$Query.fromJson(result.data!) : null;

    return QueryResult(
      source: QueryResultSource.network,
      data: result.data,
      options: QueryOptions(document: gql(query)),
      exception: null,
    );
  }

  // 获取单个用户
  Future<QueryResult<Object?>> getUser(String id) async {
    const String query = r'''
    query User($id: ID!) {
      user(id: $id) {
        id
        username
        firstName
        lastName
        email
        isStaff
        isActive
        dateJoined
        birthDate
        deathDate
        milkName
        birthPlace {
          id
          latitude
          longitude
          address
        }
        burialPlace {
          id
          latitude
          longitude
          address
        }
        phone
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
        gender
      }
    }
    ''';

    final result = await _graphQLService.query(
      query: query,
      variables: {
        'id': id,
      },
    );

    if (result.hasException) {
      return QueryResult(
        source: QueryResultSource.network,
        data: null,
        options: QueryOptions(document: gql(query)),
        exception: result.exception,
      );
    }

    // 将原始数据转换为User$Query对象
    final userQuery =
        result.data != null ? User$Query.fromJson(result.data!) : null;

    return QueryResult(
      source: QueryResultSource.network,
      data: result.data,
      options: QueryOptions(document: gql(query)),
      exception: null,
    );
  }

  // 创建用户
  Future<QueryResult<Object?>> createUser({
    required String username,
    required String password,
    String? firstName,
    String? lastName,
    String? email,
    String? birthDate,
    String? deathDate,
    String? milkName,
    String? phone,
    String? gender,
    String? birthPlaceId,
    String? burialPlaceId,
    String? familyId,
  }) async {
    const String mutation = r'''
    mutation CreateUser(
      $username: String!
      $password: String!
      $firstName: String
      $lastName: String
      $email: String
      $birthDate: Date
      $deathDate: Date
      $milkName: String
      $phone: String
      $gender: String
      $birthPlaceId: ID
      $burialPlaceId: ID
      $familyId: ID
    ) {
      createUser(
        username: $username
        password: $password
        firstName: $firstName
        lastName: $lastName
        email: $email
        birthDate: $birthDate
        deathDate: $deathDate
        milkName: $milkName
        phone: $phone
        gender: $gender
        birthPlaceId: $birthPlaceId
        burialPlaceId: $burialPlaceId
        familyId: $familyId
      ) {
        user {
          id
          username
          firstName
          lastName
          email
          phone
          birthDate
          deathDate
          milkName
          gender
          birthPlace {
            id
            latitude
            longitude
            address
          }
          burialPlace {
            id
            latitude
            longitude
            address
          }
          family {
            familyId
            familyCode
            name
          }
        }
      }
    }
    ''';

    final result = await _graphQLService.mutate(
      mutation: mutation,
      variables: {
        'username': username,
        'password': password,
        if (firstName != null) 'firstName': firstName,
        if (lastName != null) 'lastName': lastName,
        if (email != null) 'email': email,
        if (birthDate != null) 'birthDate': birthDate,
        if (deathDate != null) 'deathDate': deathDate,
        if (milkName != null) 'milkName': milkName,
        if (phone != null) 'phone': phone,
        if (gender != null) 'gender': gender,
        if (birthPlaceId != null) 'birthPlaceId': birthPlaceId,
        if (burialPlaceId != null) 'burialPlaceId': burialPlaceId,
        if (familyId != null) 'familyId': familyId,
      },
    );

    if (result.hasException) {
      return QueryResult(
        source: QueryResultSource.network,
        data: null,
        options: MutationOptions(document: gql(mutation)),
        exception: result.exception,
      );
    }

    // 将原始数据转换为CreateUser$Mutation对象
    final createUserMutation =
        result.data != null ? CreateUser$Mutation.fromJson(result.data!) : null;

    return QueryResult(
      source: QueryResultSource.network,
      data: result.data,
      options: MutationOptions(document: gql(mutation)),
      exception: null,
    );
  }

  // 更新用户
  Future<QueryResult<Object?>> updateUser({
    required String id,
    String? firstName,
    String? lastName,
    String? email,
    String? birthDate,
    String? deathDate,
    String? milkName,
    String? phone,
    String? gender,
    String? birthPlaceId,
    String? burialPlaceId,
    String? familyId,
  }) async {
    const String mutation = r'''
    mutation UpdateUser(
      $id: ID!
      $firstName: String
      $lastName: String
      $email: String
      $birthDate: Date
      $deathDate: Date
      $milkName: String
      $phone: String
      $gender: String
      $birthPlaceId: ID
      $burialPlaceId: ID
      $familyId: ID
    ) {
      updateUser(
        id: $id
        firstName: $firstName
        lastName: $lastName
        email: $email
        birthDate: $birthDate
        deathDate: $deathDate
        milkName: $milkName
        phone: $phone
        gender: $gender
        birthPlaceId: $birthPlaceId
        burialPlaceId: $burialPlaceId
        familyId: $familyId
      ) {
        user {
          id
          username
          firstName
          lastName
          email
          phone
          birthDate
          deathDate
          milkName
          gender
          birthPlace {
            id
            latitude
            longitude
            address
          }
          burialPlace {
            id
            latitude
            longitude
            address
          }
          family {
            familyId
            familyCode
            name
          }
        }
      }
    }
    ''';

    final result = await _graphQLService.mutate(
      mutation: mutation,
      variables: {
        'id': id,
        if (firstName != null) 'firstName': firstName,
        if (lastName != null) 'lastName': lastName,
        if (email != null) 'email': email,
        if (birthDate != null) 'birthDate': birthDate,
        if (deathDate != null) 'deathDate': deathDate,
        if (milkName != null) 'milkName': milkName,
        if (phone != null) 'phone': phone,
        if (gender != null) 'gender': gender,
        if (birthPlaceId != null) 'birthPlaceId': birthPlaceId,
        if (burialPlaceId != null) 'burialPlaceId': burialPlaceId,
        if (familyId != null) 'familyId': familyId,
      },
    );

    if (result.hasException) {
      return QueryResult(
        source: QueryResultSource.network,
        data: null,
        options: MutationOptions(document: gql(mutation)),
        exception: result.exception,
      );
    }

    // 将原始数据转换为UpdateUser$Mutation对象
    final updateUserMutation =
        result.data != null ? UpdateUser$Mutation.fromJson(result.data!) : null;

    return QueryResult(
      source: QueryResultSource.network,
      data: result.data,
      options: MutationOptions(document: gql(mutation)),
      exception: null,
    );
  }

  // 发送验证码
  Future<QueryResult<Object?>> sendVerificationCode(String phone) async {
    const String mutation = r'''
    mutation SendVerificationCode($phone: String!) {
      sendVerificationCode(phone: $phone) {
        success
        errors
      }
    }
    ''';

    final result = await _graphQLService.mutate(
      mutation: mutation,
      variables: {
        'phone': phone,
      },
    );

    if (result.hasException) {
      return QueryResult(
        source: QueryResultSource.network,
        data: null,
        options: MutationOptions(document: gql(mutation)),
        exception: result.exception,
      );
    }

    // 将原始数据转换为SendVerificationCode$Mutation对象
    final sendVerificationCodeMutation = result.data != null
        ? SendVerificationCode$Mutation.fromJson(result.data!)
        : null;

    return QueryResult(
      source: QueryResultSource.network,
      data: result.data,
      options: MutationOptions(document: gql(mutation)),
      exception: null,
    );
  }

  // 使用手机号注册
  Future<QueryResult<Object?>> registerWithPhone({
    required String phone,
    required String code,
    required String password,
    String? username,
  }) async {
    const String mutation = r'''
    mutation RegisterWithPhone($phone: String!, $code: String!, $password: String!, $username: String) {
      registerWithPhone(phone: $phone, code: $code, password: $password, username: $username) {
        token
        user {
          id
          username
          firstName
          lastName
          email
          phone
          gender
        }
        success
        errors
      }
    }
    ''';

    final result = await _graphQLService.mutate(
      mutation: mutation,
      variables: {
        'phone': phone,
        'code': code,
        'password': password,
        if (username != null) 'username': username,
      },
    );

    if (result.hasException) {
      return QueryResult(
        source: QueryResultSource.network,
        data: null,
        options: MutationOptions(document: gql(mutation)),
        exception: result.exception,
      );
    }

    // 将原始数据转换为RegisterWithPhone$Mutation对象
    final registerWithPhoneMutation = result.data != null
        ? RegisterWithPhone$Mutation.fromJson(result.data!)
        : null;

    return QueryResult(
      source: QueryResultSource.network,
      data: result.data,
      options: MutationOptions(document: gql(mutation)),
      exception: null,
    );
  }

  // 使用手机号登录
  Future<QueryResult<Object?>> loginWithPhone({
    required String phone,
    required String code,
  }) async {
    const String mutation = r'''
    mutation LoginWithPhone($phone: String!, $code: String!) {
      loginWithPhone(phone: $phone, code: $code) {
        token
        user {
          id
          username
          firstName
          lastName
          email
          phone
          gender
        }
        success
        errors
      }
    }
    ''';

    final result = await _graphQLService.mutate(
      mutation: mutation,
      variables: {
        'phone': phone,
        'code': code,
      },
    );

    if (result.hasException) {
      return QueryResult(
        source: QueryResultSource.network,
        data: null,
        options: MutationOptions(document: gql(mutation)),
        exception: result.exception,
      );
    }

    // 将原始数据转换为LoginWithPhone$Mutation对象
    final loginWithPhoneMutation = result.data != null
        ? LoginWithPhone$Mutation.fromJson(result.data!)
        : null;

    return QueryResult(
      source: QueryResultSource.network,
      data: result.data,
      options: MutationOptions(document: gql(mutation)),
      exception: null,
    );
  }

  // 登出
  Future<QueryResult<Object?>> logout() async {
    const String mutation = r'''
    mutation Logout {
      logout {
        success
      }
    }
    ''';

    final result = await _graphQLService.mutate(
      mutation: mutation,
    );

    if (result.hasException) {
      return QueryResult(
        source: QueryResultSource.network,
        data: null,
        options: MutationOptions(document: gql(mutation)),
        exception: result.exception,
      );
    }

    // 将原始数据转换为Logout$Mutation对象
    final logoutMutation =
        result.data != null ? Logout$Mutation.fromJson(result.data!) : null;

    return QueryResult(
      source: QueryResultSource.network,
      data: result.data,
      options: MutationOptions(document: gql(mutation)),
      exception: null,
    );
  }

  Future<List<Map<String, dynamic>>> getUsers() async {
    const String query = r'''
      query GetUsers {
        users {
          id
          name
          email
          phone
          gender
          birthDate
          deathDate
          description
          familyId
          fatherId
          motherId
          children
          spouses
        }
      }
    ''';

    final result = await _graphQLService.query(query: query);
    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    final data = result.data?['users'] as List<dynamic>?;
    if (data == null) {
      return [];
    }

    return data.map((e) => e as Map<String, dynamic>).toList();
  }

  Future<void> login(String username, String password) async {
    const String mutation = r'''
      mutation Login($username: String!, $password: String!) {
        login(username: $username, password: $password) {
          token
          user {
            id
            name
            email
          }
        }
      }
    ''';

    final variables = {
      'username': username,
      'password': password,
    };

    final result =
        await _graphQLService.mutate(mutation: mutation, variables: variables);
    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    final token = result.data?['login']?['token'] as String?;
    if (token == null) {
      throw Exception('Login failed: No token received');
    }

    _graphQLService.setAuthToken(token);
  }

  Future<void> register(String username, String password, String email) async {
    const String mutation = r'''
      mutation Register($username: String!, $password: String!, $email: String!) {
        register(username: $username, password: $password, email: $email) {
          token
          user {
            id
            name
            email
          }
        }
      }
    ''';

    final variables = {
      'username': username,
      'password': password,
      'email': email,
    };

    final result =
        await _graphQLService.mutate(mutation: mutation, variables: variables);
    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    final token = result.data?['register']?['token'] as String?;
    if (token == null) {
      throw Exception('Registration failed: No token received');
    }

    _graphQLService.setAuthToken(token);
  }
}
