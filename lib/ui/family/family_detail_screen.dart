import 'package:flutter/cupertino.dart';
import '../../routes/app_router.dart';
import '../../routes/app_routes.dart';

class FamilyDetailScreen extends StatefulWidget {
  final String familyId;

  const FamilyDetailScreen({Key? key, required this.familyId})
      : super(key: key);

  @override
  State<FamilyDetailScreen> createState() => _FamilyDetailScreenState();
}

class _FamilyDetailScreenState extends State<FamilyDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('家庭详情'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Text('编辑'),
          onPressed: () {
            AppRouter.navigateTo(context, AppRoutes.familyForm,
                arguments: {'id': widget.familyId});
          },
        ),
      ),
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // TODO: 显示家庭详情
            const Text('家庭详情'),
          ],
        ),
      ),
    );
  }
}
