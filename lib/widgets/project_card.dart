import 'package:flutter/material.dart';
import '../models/project.dart';
import '../screens/task_creation_screen.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  ProjectCard({required final this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          ListTile(
            onTap: () {
              // Naviguez vers l'écran de détails du projet.
              // Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectDetailsScreen(project: project)));
            },
            title: Text(project.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Date de début: ${project.startDate}'),
                Text('Date de fin: ${project.endDate}'),
                Text('Budget: ${project.budget}'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TaskCreationScreen(project: project)),
              );
            },
            child: Text('Ajouter une Tâche'),
          ),
        ],
      ),
    );
  }
}
