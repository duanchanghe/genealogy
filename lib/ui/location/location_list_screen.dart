import 'package:flutter/cupertino.dart';
import '../../routes/app_router.dart';
import '../../routes/app_routes.dart';

class LocationListScreen extends StatefulWidget {
  const LocationListScreen({Key? key}) : super(key: key);

  @override
  State<LocationListScreen> createState() => _LocationListScreenState();
}

class _LocationListScreenState extends State<LocationListScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('位置列表'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Text('新建'),
          onPressed: () {
            AppRouter.navigateTo(context, AppRoutes.locationForm);
          },
        ),
      ),
      child: SafeArea(
        child: ListView.builder(
          itemCount: 0, // TODO: 替换为实际数据
          itemBuilder: (context, index) {
            return CupertinoListTile(
              title: const Text('位置项'),
              subtitle: const Text('位置描述'),
              onTap: () {
                AppRouter.navigateTo(context, AppRoutes.locationDetail,
                    arguments: {'id': 'location_$index'});
              },
            );
          },
        ),
      ),
    );
  }
}
