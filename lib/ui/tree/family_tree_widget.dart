import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/person.dart';
import '../../state/person_provider.dart';

class FamilyTreeWidget extends StatelessWidget {
  const FamilyTreeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PersonProvider>(
      builder: (context, personProvider, child) {
        final persons = personProvider.persons;
        if (persons.isEmpty) {
          return const Center(child: Text('暂无家族成员'));
        }

        // 找到根节点（没有父母的成员）
        final rootPerson = persons.firstWhere(
          (person) => person.fatherId == null && person.motherId == null,
          orElse: () => persons.first,
        );

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: _buildTree(context, rootPerson, persons),
          ),
        );
      },
    );
  }

  Widget _buildTree(
      BuildContext context, Person person, List<Person> allPersons) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 父母
          if (person.fatherId != null || person.motherId != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (person.fatherId != null)
                  _buildPersonCard(context, person.father?.name ?? '未知'),
                if (person.fatherId != null && person.motherId != null)
                  const SizedBox(width: 16),
                if (person.motherId != null)
                  _buildPersonCard(context, person.mother?.name ?? '未知'),
              ],
            ),
          // 当前成员
          _buildPersonCard(context, person.name),
          // 配偶
          if (person.spouses.isNotEmpty)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: person.spouses
                  .map((spouse) => Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: _buildPersonCard(context, spouse.name),
                      ))
                  .toList(),
            ),
          // 子女
          if (person.children.isNotEmpty)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: person.children
                  .map((child) => Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: _buildPersonCard(context, child.name),
                      ))
                  .toList(),
            ),
        ],
      ),
    );
  }

  Widget _buildPersonCard(BuildContext context, String name) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
