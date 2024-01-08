class TeamMember {
  final String name;
  final String position;
  final String email;
  // Ajoutez d'autres propriétés du membre de l'équipe en fonction de vos besoins.

  TeamMember({
    required this.name,
    required this.position,
    required this.email,
    // Ajoutez d'autres propriétés du membre de l'équipe en fonction de vos besoins.
  });

  // Facultatif : Méthode pour créer un membre de l'équipe à partir d'une carte (map) de données.
  factory TeamMember.fromJson(Map<String, dynamic> json) {
    return TeamMember(
      name: json['name'],
      position: json['position'],
      email: json['email'],
      // Ajoutez d'autres propriétés du membre de l'équipe en fonction de vos besoins.
    );
  }

  // Facultatif : Méthode pour convertir un membre de l'équipe en une carte (map) de données.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'position': position,
      'email': email,
      // Ajoutez d'autres propriétés du membre de l'équipe en fonction de vos besoins.
    };
  }
}
