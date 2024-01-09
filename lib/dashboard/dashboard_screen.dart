import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:projx/models/project.dart';
import 'package:projx/screens/project_list_screen.dart';
// import 'package:projx/screens/team_members_list_screen.dart';
import 'package:projx/screens/task_list_screen.dart';
import '../data/mock_data.dart';

class DashboardScreen extends StatelessWidget {
  final List<Project> projects = MockData.getProjects().cast<Project>();

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
            // Horizontally scrollable list of projects
            Container(
              height: 120.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  final Project project = projects[index];
                  final double progress = calculateProgress(project);

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: _buildProjectCard(project.name, progress),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProjectListScreen()),
                );
              },
              child: Text('Voir la Liste des Projets'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => TeamMembersListScreen(),
            //       ),
            //     );
            //   },
            //   child: Text('Voir la Liste des Membres'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => TaskListScreen()),
            //     );
            //   },
            //   child: Text('Voir la Liste des Tâches'),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildProjectCard(String projectName, double progress) {
    return Container(
      width: 150.0, // Adjust the card width as needed
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(projectName),
            SizedBox(height: 8.0),
            CircularPercentIndicator(
              radius: 40.0,
              lineWidth: 4.0,
              percent: progress,
              center: Text('${(progress * 100).toInt()}%'),
              progressColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  double calculateProgress(Project project) {
    // Your progress calculation logic here
    return 0.7;
  }
}
