// models/task.dart

import 'package:projx/models/team_member.dart';

class Task {
  final String name;
  final DateTime dueDate;
  final int priority;
  final TeamMember assignedMember; // Added assignedMember property

  Task({
    required this.name,
    required this.dueDate,
    required this.priority,
    required this.assignedMember, // Added assignedMember to the constructor
    // Add other task properties as needed.
  });

  // Optional: Method to create a Task from a map of data.
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      name: json['name'],
      dueDate: DateTime.parse(json['dueDate']),
      priority: json['priority'],
      assignedMember: TeamMember.fromJson(json['assignedMember']),
      // Add other task properties as needed.
    );
  }

  // Optional: Method to convert a Task into a map of data.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'dueDate': dueDate.toIso8601String(),
      'priority': priority,
      'assignedMember': assignedMember.toJson(),
      // Add other task properties as needed.
    };
  }
}
