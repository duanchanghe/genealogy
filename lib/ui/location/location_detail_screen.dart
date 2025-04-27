import 'package:flutter/cupertino.dart';
import '../../routes/app_router.dart';
import '../../routes/app_routes.dart';

class LocationDetailScreen extends StatefulWidget {
  final String locationId;

  const LocationDetailScreen({Key? key, required this.locationId})
      : super(key: key);

  @override
  State<LocationDetailScreen> createState() => _LocationDetailScreenState();
}

class _LocationDetailScreenState extends State<LocationDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('位置详情'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Text('编辑'),
          onPressed: () {
            AppRouter.navigateTo(context, AppRoutes.locationForm,
                arguments: {'id': widget.locationId});
          },
        ),
      ),
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // TODO: 显示位置详情
            const Text('位置详情'),
          ],
        ),
      ),
    );
  }
}
