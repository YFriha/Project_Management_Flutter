import 'dart:convert'; // Pour la conversion JSON
import 'package:http/http.dart' as http; // Pour les requêtes HTTP
import '../models/team_member.dart';

class TeamService {
  // Remplacez cette URL par l'URL de votre API ou de votre backend.
  static const String apiUrl = 'https://exemple-api.com/teamMembers';

  // Méthode pour récupérer la liste des membres de l'équipe depuis l'API.
  Future<List<TeamMember>> getTeamMembers() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        final List<TeamMember> teamMembers = data.map((item) => TeamMember.fromJson(item)).toList();
        return teamMembers;
      } else {
        throw Exception('Erreur lors de la récupération des membres de l\'équipe.');
      }
    } catch (error) {
      throw Exception('Erreur réseau: $error');
    }
  }

  // Méthode pour créer un nouveau membre de l'équipe via l'API.
  Future<void> createTeamMember(TeamMember newMember) async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(newMember.toJson()),
      );

      if (response.statusCode != 201) {
        throw Exception('Erreur lors de la création du membre de l\'équipe.');
      }
    } catch (error) {
      throw Exception('Erreur réseau: $error');
    }
  }
}
