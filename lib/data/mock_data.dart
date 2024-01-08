// mock_data.dart

import '../models/project.dart';
import '../models/task.dart';
import '../models/team_member.dart';

class MockData {
  static List<Project> getProjects() {
    return [
      Project(
        name: 'Projet A',
        startDate: DateTime.now(),
        endDate: DateTime.now().add(Duration(days: 30)),
        budget: 5000.0,
        progress: 30.0, id: '0', // Ajoutez la propriété progress pour chaque projet
      ),
      Project(
        name: 'Projet B',
        startDate: DateTime.now(),
        endDate: DateTime.now().add(Duration(days: 45)),
        budget: 8000.0,
        progress: 60.0, id: '1',
      ),
      // Ajoutez d'autres projets selon vos besoins.
    ];
  }

  static List<Task> getTasks() {
    return [
      Task(
        name: 'Tâche 1',
        dueDate: DateTime.now().add(Duration(days: 15)),
        priority: 1,
      ),
      Task(
        name: 'Tâche 2',
        dueDate: DateTime.now().add(Duration(days: 20)),
        priority: 2,
      ),
      // Ajoutez d'autres tâches selon vos besoins.
    ];
  }

  static List<TeamMember> getTeamMembers() {
    return [
      TeamMember(
        name: 'John Doe',
        position: 'Développeur',
        email: 'john.doe@example.com',
      ),
      TeamMember(
        name: 'Jane Smith',
        position: 'Designer',
        email: 'jane.smith@example.com',
      ),
      // Ajoutez d'autres membres de l'équipe selon vos besoins.
    ];
  }
}
