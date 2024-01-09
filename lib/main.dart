import 'package:flutter/material.dart';
import 'package:projx/data/mock_data.dart';
import 'package:projx/screens/project_details_screen.dart';
import 'package:projx/screens/project_list_screen.dart';

import 'dashboard/dashboard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nom de votre application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(), // Assuming getProjects returns a list, use .first to get the first project
    );
  }
}
