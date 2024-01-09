// widgets/task_item.dart

import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskItem extends StatelessWidget {
  final Task task;

  TaskItem({required final this.task});

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
            Text('Assigné à: ${task.assignedMember.name}'), // Display assigned member's name
            // Add other details of the task as needed.
          ],
        ),
        onTap: () {
          // Navigate to the task details screen.
          // Navigator.push(context, MaterialPageRoute(builder: (context) => TaskDetailsScreen(task: task)));
        },
      ),
    );
  }
}
