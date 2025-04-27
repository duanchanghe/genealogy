import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/person.dart';
import '../../state/person_provider.dart';

class FamilyTreeWidget extends StatelessWidget {
  final String rootPersonId;

  const FamilyTreeWidget({
    super.key,
    required this.rootPersonId,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<PersonProvider>(
      builder: (context, provider, child) {
        final rootPerson = provider.getPersonById(rootPersonId);
        if (rootPerson == null) {
          return const Center(child: Text('未找到指定成员'));
        }

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: _buildTree(rootPerson, provider),
          ),
        );
      },
    );
  }

  Widget _buildTree(Person person, PersonProvider provider) {
    return const Column(mainAxisSize: MainAxisSize.min, children: []);
  }

  Widget _buildPersonCard(Person person) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              child: Text(person.name[0]),
            ),
            const SizedBox(height: 8),
            Text(
              person.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            if (person.birthDate != null)
              Text(
                '生于: ${person.birthDate}',
                style: const TextStyle(fontSize: 12),
              ),
            if (person.deathDate != null)
              Text(
                '卒于: ${person.deathDate}',
                style: const TextStyle(fontSize: 12),
              ),
          ],
        ),
      ),
    );
  }
}
