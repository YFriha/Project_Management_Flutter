import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:projx/models/task.dart';

class TaskService {
  static const String apiUrl = 'https://votre-api.com/tasks';

  Future<void> createTask(Task task) async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(task.toJson()),
      );

      if (response.statusCode != 201) {
        throw Exception('Erreur lors de la création de la tâche.');
      }
    } catch (error) {
      throw Exception('Erreur réseau: $error');
    }
  }
}
