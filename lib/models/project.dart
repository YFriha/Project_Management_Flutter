class Project {
  final String id;
  final String name;
  final DateTime startDate;
  final DateTime endDate;
  final double budget;
  final double progress; // Nouvelle propriété ajoutée pour représenter la progression du projet

  Project({
    required final this.id,
    required this.name,
    required this.startDate,
    required this.endDate,
    required this.budget,
    required this.progress, // Ajout de la propriété progress
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json['id'],
      name: json['name'],
      startDate: DateTime.parse(json['startDate']),
      endDate: DateTime.parse(json['endDate']),
      budget: json['budget'].toDouble(),
      progress: json['progress'].toDouble(), // Assurez-vous d'adapter cela à votre structure JSON
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
      'budget': budget,
      'progress': progress,
    };
  }
}
