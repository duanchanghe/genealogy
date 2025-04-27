import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/person.dart';
import '../../state/person_provider.dart';

class PersonListScreen extends StatelessWidget {
  const PersonListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('家谱成员'),
      ),
      body: Consumer<PersonProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (provider.error != null) {
            return Center(child: Text('错误: ${provider.error}'));
          }

          if (provider.persons.isEmpty) {
            return const Center(child: Text('暂无数据'));
          }

          return ListView.builder(
            itemCount: provider.persons.length,
            itemBuilder: (context, index) {
              final person = provider.persons[index];
              return ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text(person.name),
                subtitle: Text(person.birthDate ?? '未知出生日期'),
                onTap: () {
                  // TODO: 导航到详情页面
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: 导航到添加页面
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 