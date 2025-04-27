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

  Future<void> addPerson(Person person) async {
    try {
      final input = CreatePersonInput(
        name: person.name,
        birthDate: person.birthDate,
        deathDate: person.deathDate,
        gender: person.gender,
        description: person.description,
      );
      final newPerson = await _apiService.createPerson(input);
      _persons.add(newPerson);
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> updatePerson(Person person) async {
    try {
      final input = UpdatePersonInput(
        name: person.name,
        birthDate: person.birthDate,
        deathDate: person.deathDate,
        gender: person.gender,
        description: person.description,
      );
      final updatedPerson = await _apiService.updatePerson(person.id, input);
      final index = _persons.indexWhere((p) => p.id == person.id);
      if (index != -1) {
        _persons[index] = updatedPerson;
        notifyListeners();
      }
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> deletePerson(String id) async {
    try {
      final success = await _apiService.deletePerson(id);
      if (success) {
        _persons.removeWhere((p) => p.id == id);
        notifyListeners();
      }
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Person? getPersonById(String id) {
    try {
      return _persons.firstWhere((p) => p.id == id);
    } catch (e) {
      return null;
    }
  }

  Future<void> addRelationship(
      String personId, String relatedPersonId, RelationshipType type) async {
    try {
      final updatedPerson =
          await _apiService.addRelationship(personId, relatedPersonId, type);
      final index = _persons.indexWhere((p) => p.id == personId);
      if (index != -1) {
        _persons[index] = updatedPerson;
        notifyListeners();
      }
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }
}
