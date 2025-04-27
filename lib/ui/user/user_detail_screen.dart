import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../state/user_provider.dart';
import '../../l10n/l10n.dart';
import '../../routes/app_router.dart';
import '../../routes/app_routes.dart';

class UserDetailScreen extends StatefulWidget {
  final String userId;

  const UserDetailScreen({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => context.read<UserProvider>().loadUser(widget.userId));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('用户详情'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Text('编辑'),
          onPressed: () {
            AppRouter.navigateTo(context, AppRoutes.userForm,
                arguments: {'id': widget.userId});
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
                    onPressed: () => userProvider.loadUser(widget.userId),
                  ),
                ],
              ),
            );
          }

          final user = userProvider.currentUser?.data?['user'];
          if (user == null) {
            return Center(child: Text(L10n.of(context).noData));
          }

          return SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                _buildSection(
                  title: '基本信息',
                  children: [
                    _buildInfoRow('姓名', user['name'] ?? ''),
                    _buildInfoRow('邮箱', user['email'] ?? ''),
                    _buildInfoRow('电话', user['phone'] ?? ''),
                    _buildInfoRow('性别', user['gender'] ?? ''),
                    _buildInfoRow('出生日期', user['birthDate'] ?? ''),
                  ],
                ),
                const SizedBox(height: 16),
                _buildSection(
                  title: '家庭信息',
                  children: [
                    _buildInfoRow('家庭名称', user['family']?['name'] ?? ''),
                    _buildInfoRow('家庭描述', user['family']?['description'] ?? ''),
                  ],
                ),
                const SizedBox(height: 16),
                _buildSection(
                  title: '位置信息',
                  children: [
                    _buildInfoRow('国家', user['location']?['country'] ?? ''),
                    _buildInfoRow('省份', user['location']?['province'] ?? ''),
                    _buildInfoRow('城市', user['location']?['city'] ?? ''),
                    _buildInfoRow('区县', user['location']?['district'] ?? ''),
                    _buildInfoRow('街道', user['location']?['street'] ?? ''),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        ...children,
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(
                color: CupertinoColors.systemGrey,
              ),
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
