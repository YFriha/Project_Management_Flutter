import 'package:flutter/material.dart';
import '../widgets/project_card.dart';
import '../models/project.dart';
import '../data/mock_data.dart';
import '../screens/project_creation_screen.dart';

class ProjectListScreen extends StatelessWidget {
  final List<Project> projects = MockData.getProjects();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Projets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) {
            return ProjectCard(project: projects[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProjectCreationScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
