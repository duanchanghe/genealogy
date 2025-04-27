import 'package:flutter/cupertino.dart';
import '../../routes/app_router.dart';
import '../../routes/app_routes.dart';

class LocationFormScreen extends StatefulWidget {
  final String? locationId;

  const LocationFormScreen({Key? key, this.locationId}) : super(key: key);

  @override
  State<LocationFormScreen> createState() => _LocationFormScreenState();
}

class _LocationFormScreenState extends State<LocationFormScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.locationId == null ? '新建位置' : '编辑位置'),
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
            const Text('位置表单'),
          ],
        ),
      ),
    );
  }
}
