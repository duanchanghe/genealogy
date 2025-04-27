import 'graphql_service.dart';
import 'user_service.dart';
import 'family_service.dart';
import 'location_service.dart';
import 'relationship_service.dart';

class ServiceFactory {
  static final ServiceFactory instance = ServiceFactory._internal();
  final GraphQLService _graphqlService;
  late final UserService _userService;
  late final FamilyService _familyService;
  late final LocationService _locationService;
  late final RelationshipService _relationshipService;

  ServiceFactory._internal() : _graphqlService = GraphQLService() {
    _userService = UserService(_graphqlService);
    _familyService = FamilyService(_graphqlService);
    _locationService = LocationService(_graphqlService);
    _relationshipService = RelationshipService(_graphqlService);
  }

  GraphQLService get graphqlService => _graphqlService;
  UserService get userService => _userService;
  FamilyService get familyService => _familyService;
  LocationService get locationService => _locationService;
  RelationshipService get relationshipService => _relationshipService;

  void setAuthToken(String token) {
    _graphqlService.setAuthToken(token);
  }

  void clearAuthToken() {
    _graphqlService.clearAuthToken();
  }
}
