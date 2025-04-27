import 'package:flutter/cupertino.dart';
import '../../routes/app_router.dart';
import '../../routes/app_routes.dart';

class FamilyListScreen extends StatefulWidget {
  const FamilyListScreen({Key? key}) : super(key: key);

  @override
  State<FamilyListScreen> createState() => _FamilyListScreenState();
}

class _FamilyListScreenState extends State<FamilyListScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('家庭列表'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Text('新建'),
          onPressed: () {
            AppRouter.navigateTo(context, AppRoutes.familyForm);
          },
        ),
      ),
      child: SafeArea(
        child: ListView.builder(
          itemCount: 0, // TODO: 替换为实际数据
          itemBuilder: (context, index) {
            return CupertinoListTile(
              title: const Text('家庭项'),
              subtitle: const Text('家庭描述'),
              onTap: () {
                AppRouter.navigateTo(context, AppRoutes.familyDetail,
                    arguments: {'id': 'family_$index'});
              },
            );
          },
        ),
      ),
    );
  }
}
