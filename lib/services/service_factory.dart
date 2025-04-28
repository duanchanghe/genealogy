import 'graphql_service.dart';

class ServiceFactory {
  static final ServiceFactory instance = ServiceFactory._internal();
  final GraphQLService _graphqlService;

  ServiceFactory._internal() : _graphqlService = GraphQLService();

  void setAuthToken(String token) {
    _graphqlService.setAuthToken(token);
  }

  void clearAuthToken() {
    _graphqlService.clearAuthToken();
  }
}
