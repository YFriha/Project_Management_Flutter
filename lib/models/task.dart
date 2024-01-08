class Task {
  final String name;
  final DateTime dueDate;
  final int priority;
  // Ajoutez d'autres propriétés de tâche en fonction de vos besoins.

  Task({
    required this.name,
    required this.dueDate,
    required this.priority,
    // Ajoutez d'autres propriétés de tâche en fonction de vos besoins.
  });

  // Facultatif : Méthode pour créer une tâche à partir d'une carte (map) de données.
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      name: json['name'],
      dueDate: DateTime.parse(json['dueDate']),
      priority: json['priority'],
      // Ajoutez d'autres propriétés de tâche en fonction de vos besoins.
    );
  }

  // Facultatif : Méthode pour convertir une tâche en une carte (map) de données.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'dueDate': dueDate.toIso8601String(),
      'priority': priority,
      // Ajoutez d'autres propriétés de tâche en fonction de vos besoins.
    };
  }
}
