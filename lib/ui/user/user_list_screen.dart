import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../state/user_provider.dart';
import '../../l10n/l10n.dart';
import '../../routes/app_router.dart';
import '../../routes/app_routes.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({Key? key}) : super(key: key);

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => context.read<UserProvider>().loadUser());
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('用户列表'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Text('新建'),
          onPressed: () {
            AppRouter.navigateTo(context, AppRoutes.userForm);
          },
        ),
      ),
      child: Consumer<UserProvider>(
        builder: (context, userProvider, child) {
          if (userProvider.isLoading) {
            return const Center(child: CupertinoActivityIndicator());
          }

          if (userProvider.error != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(userProvider.error!),
                  const SizedBox(height: 16),
                  CupertinoButton(
                    child: Text(L10n.of(context).retry),
                    onPressed: () => userProvider.loadUser(),
                  ),
                ],
              ),
            );
          }

          final users = userProvider.users;
          if (users.isEmpty) {
            return Center(child: Text(L10n.of(context).noData));
          }

          return SafeArea(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index].data?['user'];
                if (user == null) {
                  return const SizedBox.shrink();
                }

                return CupertinoListTile(
                  title: Text(user['name'] ?? ''),
                  subtitle: Text(user['email'] ?? ''),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {
                    AppRouter.navigateTo(context, AppRoutes.userDetail,
                        arguments: {'id': user['id']});
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
