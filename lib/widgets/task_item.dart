import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskItem extends StatelessWidget {
  final Task task;

  TaskItem({final this.task});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(task.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Délai: ${task.dueDate.toLocal()}'),
            Text('Priorité: ${task.priority}'),
            // Ajoutez d'autres détails de la tâche en fonction de vos besoins.
          ],
        ),
        onTap: () {
          // Naviguez vers l'écran de détails de la tâche.
          // Navigator.push(context, MaterialPageRoute(builder: (context) => TaskDetailsScreen(task: task)));
        },
      ),
    );
  }
}
