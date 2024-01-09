import 'package:flutter/material.dart';
import '../models/project.dart';

class TaskCreationScreen extends StatefulWidget {
  final Project project;

  TaskCreationScreen({required final this.project});

  @override
  _TaskCreationScreenState createState() => _TaskCreationScreenState();
}

class _TaskCreationScreenState extends State<TaskCreationScreen> {
  final TextEditingController _taskNameController = TextEditingController();
  final TextEditingController _dueDateController = TextEditingController();
  final TextEditingController _priorityController = TextEditingController();
  final TextEditingController _assigneeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Créer une Tâche'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nom de la Tâche'),
            TextFormField(controller: _taskNameController),
            SizedBox(height: 16.0),
            Text('Date d\'Échéance'),
            TextFormField(controller: _dueDateController),
            SizedBox(height: 16.0),
            Text('Priorité'),
            TextFormField(controller: _priorityController),
            SizedBox(height: 16.0),
            Text('Responsable de la Tâche'),
            TextFormField(controller: _assigneeController),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                final String taskName = _taskNameController.text;
                final String dueDate = _dueDateController.text;
                final String priority = _priorityController.text;
                final String assignee = _assigneeController.text;

                // Utilisez ces valeurs pour créer la tâche ou envoyez-les à votre service de tâches.

                Navigator.pop(context); // Revenir à l'écran précédent après la création.
              },
              child: Text('Créer la Tâche'),
            ),
          ],
        ),
      ),
    );
  }
}
