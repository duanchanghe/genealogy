import 'package:flutter/foundation.dart';
import '../models/person.dart';
import '../services/api_service.dart';

class PersonProvider with ChangeNotifier {
  final ApiService _apiService;
  List<Person> _persons = [];
  bool _isLoading = false;
  String? _error;

  PersonProvider(this._apiService);

  List<Person> get persons => _persons;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadPersons() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _persons = await _apiService.getPersons();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void addPerson(Person person) {
    _persons.add(person);
    notifyListeners();
    // TODO: 调用API保存数据
  }

  void updatePerson(Person updatedPerson) {
    final index = _persons.indexWhere((p) => p.id == updatedPerson.id);
    if (index != -1) {
      _persons[index] = updatedPerson;
      notifyListeners();
      // TODO: 调用API更新数据
    }
  }

  void deletePerson(String id) {
    _persons.removeWhere((p) => p.id == id);
    notifyListeners();
    // TODO: 调用API删除数据
  }

  Person? getPersonById(String id) {
    try {
      return _persons.firstWhere((p) => p.id == id);
    } catch (e) {
      return null;
    }
  }

  void addRelationship(
      String personId, String relatedPersonId, String relationshipType) {
    final person = getPersonById(personId);
    final relatedPerson = getPersonById(relatedPersonId);
    if (person == null || relatedPerson == null) return;
    updatePerson(person);
    updatePerson(relatedPerson);
  }
}
