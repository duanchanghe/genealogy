import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../services/service_factory.dart';
import '../../routes/app_routes.dart';
import '../../routes/app_router.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  final _userService = ServiceFactory.instance.userService;
  int _offset = 0;
  final int _limit = 10;
  bool _isLoading = false;
  List<dynamic> _users = [];
  bool _hasMore = true;

  @override
  void initState() {
    super.initState();
    _loadUsers();
  }

  Future<void> _loadUsers() async {
    if (_isLoading || !_hasMore) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final result = await _userService.getAllUsers(
        offset: _offset,
        limit: _limit,
      );

      if (result.hasException) {
        throw result.exception!;
      }

      final data = result.data;
      if (data == null) {
        throw Exception('获取用户列表失败：返回数据为空');
      }

      final users = data['allUsers'] as List<dynamic>?;
      if (users == null) {
        throw Exception('获取用户列表失败：返回数据格式错误');
      }

      setState(() {
        _users.addAll(users);
        _offset += users.length;
        _hasMore = users.length >= _limit;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('获取用户列表失败：${e.toString()}'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _navigateToUserDetail(String userId) {
    AppRouter.navigateTo(
      context,
      AppRoutes.userDetail,
      arguments: {'userId': userId},
    );
  }

  void _navigateToUserForm() {
    AppRouter.navigateTo(
      context,
      AppRoutes.userForm,
    ).then((result) {
      if (result == true) {
        // 如果用户创建成功，重新加载列表
        setState(() {
          _users.clear();
          _offset = 0;
          _hasMore = true;
        });
        _loadUsers();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('用户列表'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _navigateToUserForm,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: _users.isEmpty && !_isLoading
                ? const Center(
                    child: Text('暂无用户数据'),
                  )
                : ListView.builder(
                    itemCount: _users.length + (_hasMore ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == _users.length) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }

                      final user = _users[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(
                            user['username']?[0] ?? '?',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        title: Text(
                            '${user['firstName'] ?? ''} ${user['lastName'] ?? ''}'),
                        subtitle: Text(user['email'] ?? ''),
                        trailing: Text(user['gender'] ?? ''),
                        onTap: () => _navigateToUserDetail(user['id']),
                      );
                    },
                  ),
          ),
          if (_hasMore && !_isLoading)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: _loadUsers,
                child: const Text('加载更多'),
              ),
            ),
        ],
      ),
    );
  }
}
