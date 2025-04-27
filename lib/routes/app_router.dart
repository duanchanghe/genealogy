import 'package:flutter/cupertino.dart';
import '../ui/components/user_list.dart';
import '../ui/components/user_detail.dart';
import '../ui/components/user_form.dart';
import 'app_routes.dart';
import '../ui/user/user_list_screen.dart';
import '../ui/user/user_detail_screen.dart';
import '../ui/user/user_form_screen.dart';
import '../ui/family/family_list_screen.dart';
import '../ui/family/family_detail_screen.dart';
import '../ui/family/family_form_screen.dart';
import '../ui/location/location_list_screen.dart';
import '../ui/location/location_detail_screen.dart';
import '../ui/location/location_form_screen.dart';
import '../ui/relationship/relationship_list_screen.dart';
import '../ui/relationship/relationship_detail_screen.dart';
import '../ui/relationship/relationship_form_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // 用户相关路由
      case AppRoutes.userList:
        return CupertinoPageRoute(builder: (_) => const UserListScreen());

      case AppRoutes.userDetail:
        final userId = settings.arguments as String;
        return CupertinoPageRoute(
            builder: (_) => UserDetailScreen(userId: userId));

      case AppRoutes.userForm:
        final userId = settings.arguments as String?;
        return CupertinoPageRoute(
            builder: (_) => UserFormScreen(userId: userId));

      case AppRoutes.familyList:
        return CupertinoPageRoute(builder: (_) => const FamilyListScreen());

      case AppRoutes.familyDetail:
        final familyId = settings.arguments as String;
        return CupertinoPageRoute(
            builder: (_) => FamilyDetailScreen(familyId: familyId));

      case AppRoutes.familyForm:
        final familyId = settings.arguments as String?;
        return CupertinoPageRoute(
            builder: (_) => FamilyFormScreen(familyId: familyId));

      case AppRoutes.locationList:
        return CupertinoPageRoute(builder: (_) => const LocationListScreen());

      case AppRoutes.locationDetail:
        final locationId = settings.arguments as String;
        return CupertinoPageRoute(
            builder: (_) => LocationDetailScreen(locationId: locationId));

      case AppRoutes.locationForm:
        final locationId = settings.arguments as String?;
        return CupertinoPageRoute(
            builder: (_) => LocationFormScreen(locationId: locationId));

      case AppRoutes.relationshipList:
        return CupertinoPageRoute(
            builder: (_) => const RelationshipListScreen());

      case AppRoutes.relationshipDetail:
        final relationshipId = settings.arguments as String;
        return CupertinoPageRoute(
            builder: (_) =>
                RelationshipDetailScreen(relationshipId: relationshipId));

      case AppRoutes.relationshipForm:
        final relationshipId = settings.arguments as String?;
        return CupertinoPageRoute(
            builder: (_) =>
                RelationshipFormScreen(relationshipId: relationshipId));

      // 默认路由
      default:
        return CupertinoPageRoute(
          builder: (_) => CupertinoPageScaffold(
            navigationBar: const CupertinoNavigationBar(
              middle: Text('页面未找到'),
            ),
            child: Center(
              child: Text('未找到路由: ${settings.name}'),
            ),
          ),
        );
    }
  }

  // 导航方法
  static Future<T?> navigateTo<T>(
    BuildContext context,
    String routeName, {
    Map<String, dynamic>? arguments,
  }) {
    return Navigator.pushNamed(
      context,
      routeName,
      arguments: arguments,
    );
  }

  static Future<T?> navigateToReplacement<T>(
    BuildContext context,
    String routeName, {
    Map<String, dynamic>? arguments,
  }) {
    return Navigator.pushReplacementNamed(
      context,
      routeName,
      arguments: arguments,
    );
  }

  static Future<T?> navigateToAndRemoveUntil<T>(
    BuildContext context,
    String routeName, {
    Map<String, dynamic>? arguments,
  }) {
    return Navigator.pushNamedAndRemoveUntil(
      context,
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }

  static void pop<T>(BuildContext context, [T? result]) {
    Navigator.pop(context, result);
  }
}
