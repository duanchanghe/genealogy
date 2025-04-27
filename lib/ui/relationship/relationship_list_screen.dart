import 'package:flutter/cupertino.dart';
import '../../routes/app_router.dart';
import '../../routes/app_routes.dart';

class RelationshipListScreen extends StatefulWidget {
  const RelationshipListScreen({Key? key}) : super(key: key);

  @override
  State<RelationshipListScreen> createState() => _RelationshipListScreenState();
}

class _RelationshipListScreenState extends State<RelationshipListScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('关系列表'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Text('新建'),
          onPressed: () {
            AppRouter.navigateTo(context, AppRoutes.relationshipForm);
          },
        ),
      ),
      child: SafeArea(
        child: ListView.builder(
          itemCount: 0, // TODO: 替换为实际数据
          itemBuilder: (context, index) {
            return CupertinoListTile(
              title: const Text('关系项'),
              subtitle: const Text('关系描述'),
              onTap: () {
                AppRouter.navigateTo(context, AppRoutes.relationshipDetail,
                    arguments: {'id': 'relationship_$index'});
              },
            );
          },
        ),
      ),
    );
  }
}
