import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/person.dart';
import '../../state/person_provider.dart';

class PersonFormScreen extends StatefulWidget {
  final Person? person;

  const PersonFormScreen({super.key, this.person});

  @override
  State<PersonFormScreen> createState() => _PersonFormScreenState();
}

class _PersonFormScreenState extends State<PersonFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _birthDateController;
  late TextEditingController _deathDateController;
  late TextEditingController _descriptionController;
  String? _selectedGender;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.person?.name ?? '');
    _birthDateController =
        TextEditingController(text: widget.person?.birthDate ?? '');
    _deathDateController =
        TextEditingController(text: widget.person?.deathDate ?? '');
    _descriptionController =
        TextEditingController(text: widget.person?.description ?? '');
    _selectedGender = widget.person?.gender;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _birthDateController.dispose();
    _deathDateController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.person == null ? '添加成员' : '编辑成员'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: '姓名',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '请输入姓名';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedGender,
              decoration: const InputDecoration(
                labelText: '性别',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: '男', child: Text('男')),
                DropdownMenuItem(value: '女', child: Text('女')),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedGender = value;
                });
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _birthDateController,
              decoration: const InputDecoration(
                labelText: '出生日期',
                border: OutlineInputBorder(),
              ),
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (date != null) {
                  _birthDateController.text =
                      date.toIso8601String().split('T')[0];
                }
              },
              readOnly: true,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _deathDateController,
              decoration: const InputDecoration(
                labelText: '死亡日期',
                border: OutlineInputBorder(),
              ),
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (date != null) {
                  _deathDateController.text =
                      date.toIso8601String().split('T')[0];
                }
              },
              readOnly: true,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: '描述',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text(widget.person == null ? '添加' : '保存'),
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final person = Person(
        id: widget.person?.id ??
            DateTime.now().millisecondsSinceEpoch.toString(),
        name: _nameController.text,
        birthDate: _birthDateController.text.isEmpty
            ? null
            : _birthDateController.text,
        deathDate: _deathDateController.text.isEmpty
            ? null
            : _deathDateController.text,
        gender: _selectedGender,
        description: _descriptionController.text.isEmpty
            ? null
            : _descriptionController.text,
      );

      final provider = context.read<PersonProvider>();
      if (widget.person == null) {
        provider.addPerson(person);
      } else {
        provider.updatePerson(person);
      }

      Navigator.pop(context);
    }
  }
}
