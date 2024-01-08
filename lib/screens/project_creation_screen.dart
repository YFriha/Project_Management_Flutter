import 'package:flutter/material.dart';

class ProjectCreationScreen extends StatefulWidget {
  @override
  _ProjectCreationScreenState createState() => _ProjectCreationScreenState();
}

class _ProjectCreationScreenState extends State<ProjectCreationScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();
  final TextEditingController _budgetController = TextEditingController();
  final TextEditingController _teamMembersController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Créer un Projet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nom du Projet'),
            TextFormField(controller: _nameController),
            SizedBox(height: 16.0),
            Text('Date de Début'),
            TextFormField(controller: _startDateController),
            SizedBox(height: 16.0),
            Text('Date de Fin'),
            TextFormField(controller: _endDateController),
            SizedBox(height: 16.0),
            Text('Budget'),
            TextFormField(controller: _budgetController),
            SizedBox(height: 16.0),
            Text('Membres de l\'Équipe (séparés par des virgules)'),
            TextFormField(controller: _teamMembersController),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Ajoutez ici la logique pour créer le projet avec les détails spécifiés.
                final String name = _nameController.text;
                final String startDate = _startDateController.text;
                final String endDate = _endDateController.text;
                final double budget = double.tryParse(_budgetController.text) ?? 0.0;
                final List<String> teamMembers = _teamMembersController.text.split(',');

                // Utilisez ces valeurs pour créer le projet ou envoyez-les à votre service de projet.

                Navigator.pop(context); // Revenir à l'écran précédent après la création.
              },
              child: Text('Créer le Projet'),
            ),
          ],
        ),
      ),
    );
  }
}
