import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskListScreen extends StatelessWidget {
  final List<Task> tasks;

  TaskListScreen({required final this.tasks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Tâches'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(tasks[index].name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Délai: ${tasks[index].dueDate.toLocal()}'),
                  Text('Priorité: ${tasks[index].priority}'),
                  // Ajoutez d'autres détails de la tâche en fonction de vos besoins.
                ],
              ),
              onTap: () {
                // Naviguez vers l'écran de détails de la tâche.
                // Navigator.push(context, MaterialPageRoute(builder: (context) => TaskDetailsScreen(task: tasks[index])));
              },
            );
          },
        ),
      ),
    );
  }
}
