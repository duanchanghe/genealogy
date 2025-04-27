import 'package:flutter/cupertino.dart';
import '../../routes/app_router.dart';

class FamilyFormScreen extends StatefulWidget {
  final String? familyId;

  const FamilyFormScreen({Key? key, this.familyId}) : super(key: key);

  @override
  State<FamilyFormScreen> createState() => _FamilyFormScreenState();
}

class _FamilyFormScreenState extends State<FamilyFormScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.familyId == null ? '新建家庭' : '编辑家庭'),
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
            const Text('家庭表单'),
          ],
        ),
      ),
    );
  }
}
