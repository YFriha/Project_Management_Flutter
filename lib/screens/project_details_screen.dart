import 'package:flutter/material.dart';
import '../models/project.dart';

class ProjectDetailsScreen extends StatelessWidget {
  final Project project;

  ProjectDetailsScreen({final this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails du Projet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nom du Projet: ${project.name}'),
            SizedBox(height: 10),
            Text('Date de début: ${project.startDate.toLocal()}'),
            Text('Date de fin: ${project.endDate.toLocal()}'),
            Text('Budget: ${project.budget}'),
            // Ajoutez d'autres détails du projet en fonction de vos besoins.
          ],
        ),
      ),
    );
  }
}
