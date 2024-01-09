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
        progress: 30.0,
        id: '0',
      ),
      Project(
        name: 'Projet B',
        startDate: DateTime.now(),
        endDate: DateTime.now().add(Duration(days: 45)),
        budget: 8000.0,
        progress: 60.0,
        id: '1',
      ),
      // Add more projects as needed.
    ];
  }

  static List<Task> getTasks() {
    return [
      Task(
        name: 'Tâche 1',
        dueDate: DateTime.now().add(Duration(days: 15)),
        priority: 1,
        assignedMember: getTeamMembers()[0], // Assign task to the first team member
      ),
      Task(
        name: 'Tâche 2',
        dueDate: DateTime.now().add(Duration(days: 20)),
        priority: 2,
        assignedMember: getTeamMembers()[1], // Assign task to the second team member
      ),
      Task(
        name: 'Tâche 3',
        dueDate: DateTime.now().add(Duration(days: 25)),
        priority: 3,
        assignedMember: getTeamMembers()[2], // Assign task to the third team member
      ),
      // Add more tasks as needed.
    ];
  }

  static List<TeamMember> getTeamMembers() {
    return [
      TeamMember(
        name: 'friha yassir',
        position: 'Développeur',
        email: 'friha@example.com',
      ),
      TeamMember(
        name: 'aballagh nezar',
        position: 'Designer',
        email: 'aballagh@example.com',
      ),
      TeamMember(
        name: 'hamza',
        position: 'Testeur',
        email: 'hamza@example.com',
      ),
      // Add more team members as needed.
    ];
  }
}
