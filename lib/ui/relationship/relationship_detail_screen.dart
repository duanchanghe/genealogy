import 'package:flutter/cupertino.dart';
import '../../routes/app_router.dart';
import '../../routes/app_routes.dart';

class RelationshipDetailScreen extends StatefulWidget {
  final String relationshipId;

  const RelationshipDetailScreen({Key? key, required this.relationshipId})
      : super(key: key);

  @override
  State<RelationshipDetailScreen> createState() =>
      _RelationshipDetailScreenState();
}

class _RelationshipDetailScreenState extends State<RelationshipDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('关系详情'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Text('编辑'),
          onPressed: () {
            AppRouter.navigateTo(context, AppRoutes.relationshipForm,
                arguments: {'id': widget.relationshipId});
          },
        ),
      ),
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // TODO: 显示关系详情
            const Text('关系详情'),
          ],
        ),
      ),
    );
  }
}
