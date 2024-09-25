import 'package:flutter/material.dart';
import '../models/course.dart';
import 'course_detail_screen.dart';

class CoursesListScreen extends StatelessWidget {
  final List<Course> courses = [
    Course(
      title: 'Flutter for Beginners',
      shortDescription: 'Introduction to Flutter development.',
      fullDescription: 'This course covers the basics of Flutter, including setup, widgets, state management, and navigation.',
      lessons: 12,
    ),
    Course(
      title: 'Advanced Flutter',
      shortDescription: 'Deep dive into Flutter development.',
      fullDescription: 'In this course, we explore advanced topics like animations, custom widgets, and performance optimizations in Flutter.',
      lessons: 20,
    ),
    Course(
      title: 'Dart Programming',
      shortDescription: 'Learn Dart, the language behind Flutter.',
      fullDescription: 'A comprehensive course on Dart programming, including syntax, object-oriented programming, and functional programming concepts.',
      lessons: 15,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return ListTile(
            title: Text(course.title),
            subtitle: Text(course.shortDescription),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetailScreen(course: course),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
