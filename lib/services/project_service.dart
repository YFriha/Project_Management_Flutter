import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:projx/models/project.dart';

class ProjectService {
  static const String apiUrl = 'https://votre-api.com/projects';

  Future<List<Project>> getProjects() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final List<dynamic> projectsJson = json.decode(response.body);
        return projectsJson.map((json) => Project.fromJson(json)).toList();
      } else {
        throw Exception('Erreur lors de la récupération des projets.');
      }
    } catch (error) {
      throw Exception('Erreur réseau: $error');
    }
  }

  Future<void> createProject(Project project) async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(project.toJson()),
      );

      if (response.statusCode != 201) {
        throw Exception('Erreur lors de la création du projet.');
      }
    } catch (error) {
      throw Exception('Erreur réseau: $error');
    }
  }
}
