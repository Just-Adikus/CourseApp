import 'package:flutter/material.dart';
import 'view/courses_list_screen.dart';

void main() {
  runApp(CoursesApp());
}

class CoursesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Courses App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CoursesListScreen(),
    );
  }
}
