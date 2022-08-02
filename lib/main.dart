import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widgets/AppData.dart';

import 'Widgets/date.dart';
import 'Widgets/ToDoList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: ToDoApp(),
    );
  }
}

class ToDoApp extends StatefulWidget {
  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  DateTime fixedDate = DateTime.now();
  void choose_a_date(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2024),
    ).then((selectedDate) {
      if (selectedDate != null) {
        setState(() {
          fixedDate = selectedDate;
        });
      }
    });
  }

  void lastDay() {
    setState(() {
      fixedDate = DateTime(fixedDate.year, fixedDate.month, fixedDate.day - 1);
    });
  }

  void nextDay() {
    setState(() {
      fixedDate = DateTime(fixedDate.year, fixedDate.month, fixedDate.day + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("To Do App"),
      ),
      body: Column(
        children: [
          AppData(choose_a_date, fixedDate, lastDay, nextDay),
          date(),
          ToDoList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
