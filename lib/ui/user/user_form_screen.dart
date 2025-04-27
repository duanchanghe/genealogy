import 'package:flutter/cupertino.dart';
import '../../routes/app_router.dart';
import '../../routes/app_routes.dart';

class UserFormScreen extends StatefulWidget {
  final String? userId;

  const UserFormScreen({Key? key, this.userId}) : super(key: key);

  @override
  State<UserFormScreen> createState() => _UserFormScreenState();
}

class _UserFormScreenState extends State<UserFormScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.userId == null ? '新建用户' : '编辑用户'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Text('保存'),
          onPressed: () {
            // TODO: 实现保存逻辑
            AppRouter.pop(context);
          },
        ),
      ),
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // TODO: 添加表单字段
            const Text('用户表单'),
          ],
        ),
      ),
    );
  }
}
