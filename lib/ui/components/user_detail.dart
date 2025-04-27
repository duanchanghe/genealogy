import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../services/service_factory.dart';
import '../../routes/app_routes.dart';
import '../../routes/app_router.dart';

class UserDetail extends StatefulWidget {
  final String userId;

  const UserDetail({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  final _userService = ServiceFactory.instance.userService;
  bool _isLoading = true;
  Map<String, dynamic>? _user;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadUser();
  }

  Future<void> _loadUser() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final result = await _userService.getUser(widget.userId);

      if (result.hasException) {
        throw result.exception!;
      }

      final data = result.data;
      if (data == null) {
        throw Exception('获取用户详情失败：返回数据为空');
      }

      final user = data['user'] as Map<String, dynamic>?;
      if (user == null) {
        throw Exception('获取用户详情失败：返回数据格式错误');
      }

      setState(() {
        _user = user;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  void _navigateToEdit() {
    AppRouter.navigateTo(
      context,
      AppRoutes.userForm,
      arguments: {
        'userId': widget.userId,
        'initialData': _user,
      },
    ).then((result) {
      if (result == true) {
        // 如果用户更新成功，重新加载数据
        _loadUser();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('用户详情'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: _navigateToEdit,
          ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _error != null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '获取用户详情失败：$_error',
                        style: const TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _loadUser,
                        child: const Text('重试'),
                      ),
                    ],
                  ),
                )
              : _user == null
                  ? const Center(
                      child: Text('用户不存在'),
                    )
                  : SingleChildScrollView(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildHeader(),
                          const SizedBox(height: 16),
                          _buildInfoSection(),
                          const SizedBox(height: 16),
                          _buildFamilySection(),
                          const SizedBox(height: 16),
                          _buildLocationSection(),
                        ],
                      ),
                    ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        CircleAvatar(
          radius: 40,
          child: Text(
            _user!['username']?[0] ?? '?',
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${_user!['firstName'] ?? ''} ${_user!['lastName'] ?? ''}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                _user!['username'] ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '基本信息',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildInfoRow('邮箱', _user!['email'] ?? ''),
            _buildInfoRow('电话', _user!['phone'] ?? ''),
            _buildInfoRow('性别', _user!['gender'] ?? ''),
            _buildInfoRow('乳名', _user!['milkName'] ?? ''),
            _buildInfoRow('出生日期', _user!['birthDate'] ?? ''),
            _buildInfoRow('死亡日期', _user!['deathDate'] ?? ''),
          ],
        ),
      ),
    );
  }

  Widget _buildFamilySection() {
    final family = _user!['family'] as Map<String, dynamic>?;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '家族信息',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            if (family != null) ...[
              _buildInfoRow('家族代码', family['familyCode'] ?? ''),
              _buildInfoRow('家族名称', family['name'] ?? ''),
              _buildInfoRow('家族描述', family['description'] ?? ''),
            ] else
              const Text('未关联家族'),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationSection() {
    final birthPlace = _user!['birthPlace'] as Map<String, dynamic>?;
    final burialPlace = _user!['burialPlace'] as Map<String, dynamic>?;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '位置信息',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            if (birthPlace != null) ...[
              const Text(
                '出生地',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              _buildInfoRow('地址', birthPlace['address'] ?? ''),
              _buildInfoRow('纬度', birthPlace['latitude']?.toString() ?? ''),
              _buildInfoRow('经度', birthPlace['longitude']?.toString() ?? ''),
            ] else
              const Text('未设置出生地'),
            const SizedBox(height: 16),
            if (burialPlace != null) ...[
              const Text(
                '安葬地',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              _buildInfoRow('地址', burialPlace['address'] ?? ''),
              _buildInfoRow('纬度', burialPlace['latitude']?.toString() ?? ''),
              _buildInfoRow('经度', burialPlace['longitude']?.toString() ?? ''),
            ] else
              const Text('未设置安葬地'),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: Text(value.isEmpty ? '未设置' : value),
          ),
        ],
      ),
    );
  }
}
