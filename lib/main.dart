import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'app.dart';
import 'services/api_service.dart';
import 'state/person_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 初始化GraphQL客户端
  await initHiveForFlutter();

  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (_) => ApiService(),
        ),
        ChangeNotifierProxyProvider<ApiService, PersonProvider>(
          create: (context) => PersonProvider(context.read<ApiService>()),
          update: (context, apiService, previous) => PersonProvider(apiService),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
