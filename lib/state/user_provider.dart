import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../services/graphql_service.dart';
import '../services/service_factory.dart';
import '../services/user_service.dart';

class UserProvider extends ChangeNotifier {
  final GraphQLService _graphQLService;
  final UserService _userService;
  bool _isLoading = false;
  String? _error;
  String? _token;
  String? _userId;
  QueryResult? _currentUser;
  List<QueryResult> _users = [];

  UserProvider([GraphQLService? graphQLService])
      : _graphQLService = GraphQLService(),
        _userService = ServiceFactory.instance.userService;

  bool get isLoading => _isLoading;
  String? get error => _error;
  String? get token => _token;
  String? get userId => _userId;
  QueryResult? get currentUser => _currentUser;
  bool get isLoggedIn => _token != null && _userId != null;

  get users => null;

  Future<void> login(String email, String password) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _apiService.login(email, password);
      if (result.success) {
        _token = result.token;
        _userId = result.userId;
        ServiceFactory.instance.setAuthToken(_token!);
        await loadUser();
      } else {
        _error = result.error ?? '登录失败';
      }
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> register(String email, String password, String name) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _apiService.register(email, password, name);
      if (result.success) {
        _token = result.token;
        _userId = result.userId;
        ServiceFactory.instance.setAuthToken(_token!);
        await loadUser();
      } else {
        _error = result.error ?? '注册失败';
      }
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> loginWithPhone(String phone, String code) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _apiService.loginWithPhone(phone, code);
      if (result.success) {
        _token = result.token;
        _userId = result.userId;
        ServiceFactory.instance.setAuthToken(_token!);
        await loadUser();
      } else {
        _error = result.error ?? '登录失败';
      }
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> registerWithPhone(String phone, String code, String name) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _apiService.registerWithPhone(phone, code, name);
      if (result.success) {
        _token = result.token;
        _userId = result.userId;
        ServiceFactory.instance.setAuthToken(_token!);
        await loadUser();
      } else {
        _error = result.error ?? '注册失败';
      }
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> logout() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _apiService.logout();
      if (result.success) {
        _token = null;
        _userId = null;
        _currentUser = null;
        ServiceFactory.instance.clearAuthToken();
      } else {
        _error = result.error ?? '登出失败';
      }
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> loadUser([String? userId]) async {
    if (_userId == null) return;

    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _userService.getUser(_userId!);
      if (result.hasException) {
        throw result.exception!;
      }
      _currentUser = result;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
