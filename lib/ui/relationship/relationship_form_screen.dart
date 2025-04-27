import 'package:flutter/cupertino.dart';
import '../../routes/app_router.dart';

class RelationshipFormScreen extends StatefulWidget {
  final String? relationshipId;

  const RelationshipFormScreen({Key? key, this.relationshipId})
      : super(key: key);

  @override
  State<RelationshipFormScreen> createState() => _RelationshipFormScreenState();
}

class _RelationshipFormScreenState extends State<RelationshipFormScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.relationshipId == null ? '新建关系' : '编辑关系'),
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
            const Text('关系表单'),
          ],
        ),
      ),
    );
  }
}
