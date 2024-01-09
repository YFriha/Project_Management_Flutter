import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projx/data/mock_data.dart';
import 'package:projx/models/project.dart';
import 'package:projx/screens/project_creation_screen.dart';
import 'package:projx/screens/project_details_screen.dart';
import 'package:projx/widgets/project_card.dart';

class ProjectListScreen extends StatelessWidget {
  final List<Project> projects = MockData.getProjects();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Projets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to ProjectDetailsScreen when a project is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProjectDetailsScreen(
                          project: projects[index],
                        ),
                      ),
                    );
                  },
                  child: ProjectCard(project: projects[index]),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to ProjectDetailsScreen when the button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProjectDetailsScreen(
                          project: projects[index],
                        ),
                      ),
                    );
                  },
                  child: Text('View Project Details'),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProjectCreationScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
