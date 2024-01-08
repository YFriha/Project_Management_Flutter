import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:projx/models/project.dart';
import '../data/mock_data.dart'; // Importez votre logique de récupération des données.

class DashboardScreen extends StatelessWidget {
  final List<Project> projects = MockData.getProjects().cast<Project>(); // Remplacez cela par votre logique de récupération des projets.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tableau de Bord'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Progression des Projets',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            // Affichez la progression de chaque projet sous forme de barre circulaire.
            ListView.builder(
              shrinkWrap: true,
              itemCount: projects.length,
              itemBuilder: (context, index) {
                final Project project = projects[index];
                final double progress = calculateProgress(project); // Calculez la progression (vous devrez implémenter cette fonction).

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(project.name),
                    CircularPercentIndicator(
                      radius: 60.0, // Rayon de la barre circulaire
                      lineWidth: 5.0, // Largeur de la ligne de la barre circulaire
                      percent: progress,
                      center: Text('${(progress * 100).toInt()}%'),
                      progressColor: Colors.blue,
                    ),
                    SizedBox(height: 16.0),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Fonction pour calculer la progression d'un projet (à adapter selon vos besoins).
  double calculateProgress(Project project) {
    // Implémentez votre logique de calcul de la progression ici.
    // Par exemple, si vous avez des tâches, vous pouvez compter le nombre de tâches terminées par rapport au nombre total de tâches.
    return 0.7; // Remplacez ceci par votre logique réelle.
  }
}
