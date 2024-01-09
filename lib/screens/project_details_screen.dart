import 'package:flutter/material.dart';
import 'package:projx/models/project.dart';
import 'package:projx/models/task.dart';
import 'package:projx/models/team_member.dart';
import '../data/mock_data.dart';
import 'team_collaboration_screen.dart'; // Import the TeamCollaborationScreen

class ProjectDetailsScreen extends StatelessWidget {
  final Project project;

  ProjectDetailsScreen({required final this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildProjectDetails(),
            SizedBox(height: 20),
            _buildTasksSection(),
            SizedBox(height: 20),
            _buildTeamMembersSection(context), // Pass the context to _buildTeamMembersSection
          ],
        ),
      ),
    );
  }

  Widget _buildProjectDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Project Name: ${project.name}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text('Start Date: ${project.startDate.toLocal()}'),
        Text('End Date: ${project.endDate.toLocal()}'),
        Text('Budget: \$${project.budget.toStringAsFixed(2)}'),
        Text('Progress: ${project.progress}%'),
      ],
    );
  }

  Widget _buildTasksSection() {
    List<Task> tasks = MockData.getTasks();

    return ExpansionTile(
      title: Text('Tasks'),
      children: tasks.map((task) => _buildTaskTile(task)).toList(),
    );
  }

  Widget _buildTaskTile(Task task) {
    return ListTile(
      title: Text(task.name),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Due Date: ${task.dueDate.toLocal()}'),
          Text('Priority: ${task.priority}'),
          Text('Assigned Member: ${task.assignedMember.name}'),
        ],
      ),
      onTap: () {
        // Navigate to the task details screen if needed
        // Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectDetailsScreen(project: project)));
      },
    );
  }

  Widget _buildTeamMembersSection(BuildContext context) {
    List<TeamMember> teamMembers = MockData.getTeamMembers();

    return ExpansionTile(
      title: Text('Team Members'),
      children: teamMembers
          .map(
            (member) => ListTile(
          title: Text(member.name),
          subtitle: Text(member.position),
        ),
      )
          .toList()
        ..add(
          // Add a button to navigate to TeamCollaborationScreen
          ListTile(
            title: Text('Team Collaboration'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TeamCollaborationScreen()),
              );
            },
          ),
        ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Application Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProjectDetailsScreen(project: MockData.getProjects().first),
    );
  }
}
