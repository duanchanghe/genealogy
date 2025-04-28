import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:genealogy/services/graphql_service.dart';
import 'package:provider/provider.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'routes/app_routes.dart';
import 'routes/app_router.dart';
import 'state/user_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => GraphQLService(),
        ),
        ChangeNotifierProxyProvider<GraphQLService, UserProvider>(
          create: (context) => UserProvider(context.read<GraphQLService>()),
          update: (context, graphqlService, previous) => UserProvider(graphqlService),
        ),
      ],
      child: const CupertinoApp(
        title: '家谱',
        theme: CupertinoThemeData(
          primaryColor: CupertinoColors.systemBlue,
          brightness: Brightness.light,
        ),
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [Locale('en'), Locale('zh')],
        locale: Locale('en'),
        initialRoute: AppRoutes.userList,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
