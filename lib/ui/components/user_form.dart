import 'package:flutter/material.dart';
import 'package:genealogy/services/service_factory.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class UserForm extends StatefulWidget {
  final String? userId;
  final Map<String, dynamic>? initialData;

  const UserForm({
    Key? key,
    this.userId,
    this.initialData,
  }) : super(key: key);

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();
  final ServiceFactory _serviceFactory = ServiceFactory.instance;

  // 表单控制器
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _milkNameController = TextEditingController();
  final _birthDateController = TextEditingController();
  final _deathDateController = TextEditingController();

  // 表单状态
  String _gender = 'MALE';
  String? _birthPlaceId;
  String? _burialPlaceId;
  String? _familyId;

  bool _isLoading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _initializeForm();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _milkNameController.dispose();
    _birthDateController.dispose();
    _deathDateController.dispose();
    super.dispose();
  }

  void _initializeForm() {
    if (widget.initialData != null) {
      _usernameController.text = widget.initialData!['username'] ?? '';
      _firstNameController.text = widget.initialData!['firstName'] ?? '';
      _lastNameController.text = widget.initialData!['lastName'] ?? '';
      _emailController.text = widget.initialData!['email'] ?? '';
      _phoneController.text = widget.initialData!['phone'] ?? '';
      _milkNameController.text = widget.initialData!['milkName'] ?? '';
      _birthDateController.text = widget.initialData!['birthDate'] ?? '';
      _deathDateController.text = widget.initialData!['deathDate'] ?? '';
      _gender = widget.initialData!['gender'] ?? 'MALE';

      final birthPlace =
          widget.initialData!['birthPlace'] as Map<String, dynamic>?;
      if (birthPlace != null) {
        _birthPlaceId = birthPlace['id'];
      }

      final burialPlace =
          widget.initialData!['burialPlace'] as Map<String, dynamic>?;
      if (burialPlace != null) {
        _burialPlaceId = burialPlace['id'];
      }

      final family = widget.initialData!['family'] as Map<String, dynamic>?;
      if (family != null) {
        _familyId = family['familyId'];
      }
    }
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      QueryResult result;

      if (widget.userId != null) {
        // 更新用户
        result = await _serviceFactory.userService.updateUser(
          id: widget.userId!,
          firstName: _firstNameController.text,
          lastName: _lastNameController.text,
          email: _emailController.text,
          phone: _phoneController.text,
          gender: _gender,
          milkName: _milkNameController.text,
          birthDate: _birthDateController.text.isEmpty
              ? null
              : _birthDateController.text,
          deathDate: _deathDateController.text.isEmpty
              ? null
              : _deathDateController.text,
          birthPlaceId: _birthPlaceId,
          burialPlaceId: _burialPlaceId,
          familyId: _familyId,
        );
      } else {
        // 创建用户
        result = await _serviceFactory.userService.createUser(
          username: _usernameController.text,
          password: _passwordController.text,
          firstName: _firstNameController.text,
          lastName: _lastNameController.text,
          email: _emailController.text,
          phone: _phoneController.text,
          gender: _gender,
          milkName: _milkNameController.text,
          birthDate: _birthDateController.text.isEmpty
              ? null
              : _birthDateController.text,
          deathDate: _deathDateController.text.isEmpty
              ? null
              : _deathDateController.text,
          birthPlaceId: _birthPlaceId,
          burialPlaceId: _burialPlaceId,
          familyId: _familyId,
        );
      }

      if (result.hasException) {
        throw result.exception!;
      }

      // 返回成功
      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userId != null ? '编辑用户' : '创建用户'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (_error != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          '错误：$_error',
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                    if (widget.userId == null)
                      TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          labelText: '用户名',
                          hintText: '请输入用户名',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '请输入用户名';
                          }
                          return null;
                        },
                      ),
                    if (widget.userId == null) const SizedBox(height: 16),
                    if (widget.userId == null)
                      TextFormField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          labelText: '密码',
                          hintText: '请输入密码',
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '请输入密码';
                          }
                          return null;
                        },
                      ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _firstNameController,
                      decoration: const InputDecoration(
                        labelText: '名',
                        hintText: '请输入名',
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _lastNameController,
                      decoration: const InputDecoration(
                        labelText: '姓',
                        hintText: '请输入姓',
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: '邮箱',
                        hintText: '请输入邮箱',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _phoneController,
                      decoration: const InputDecoration(
                        labelText: '电话',
                        hintText: '请输入电话',
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: _gender,
                      decoration: const InputDecoration(
                        labelText: '性别',
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: 'MALE',
                          child: Text('男'),
                        ),
                        DropdownMenuItem(
                          value: 'FEMALE',
                          child: Text('女'),
                        ),
                        DropdownMenuItem(
                          value: 'OTHER',
                          child: Text('其他'),
                        ),
                      ],
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _gender = value;
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _milkNameController,
                      decoration: const InputDecoration(
                        labelText: '乳名',
                        hintText: '请输入乳名',
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _birthDateController,
                      decoration: const InputDecoration(
                        labelText: '出生日期',
                        hintText: 'YYYY-MM-DD',
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _deathDateController,
                      decoration: const InputDecoration(
                        labelText: '死亡日期',
                        hintText: 'YYYY-MM-DD',
                      ),
                    ),
                    const SizedBox(height: 16),
                    // TODO: 添加位置选择器
                    // TODO: 添加家族选择器
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: _submitForm,
                      child: const Text('保存'),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
