import 'package:flutter/material.dart';
import 'package:projx/screens/calendar_screen.dart';
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
      home: CalendarScreen(),  // Définissez le tableau de bord comme écran initial
    );
  }
}
