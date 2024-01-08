import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  late DateTime _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendrier'),
      ),
      body: Column(
        children: [
          // TableCalendar(
          //   firstDay: DateTime.utc(2022, 1, 1),
          //   lastDay: DateTime.utc(2022, 12, 31),
          //   focusedDay: _focusedDay,
          //   calendarFormat: _calendarFormat,
          //   onFormatChanged: (format) {
          //     setState(() {
          //       _calendarFormat = format;
          //     });
          //   },
          //   onDaySelected: (selectedDay, focusedDay) {
          //     setState(() {
          //       _selectedDay = selectedDay;
          //     });
          //   },
          // ),
      TableCalendar(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
    ),
          SizedBox(height: 16.0),
          Text('Événements liés aux projets pour le $_selectedDay'),
          // Affichez ici les événements liés aux projets pour la date sélectionnée.
        ],
      ),
    );
  }
}
