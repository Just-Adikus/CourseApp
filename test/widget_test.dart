import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:courses_app/main.dart';
import 'package:courses_app/view/courses_list_screen.dart';

void main() {
  testWidgets('Course list and navigation to course detail', (WidgetTester tester) async {
    // Строим приложение и отображаем начальный экран.
    await tester.pumpWidget(CoursesApp());

    // Проверяем, что на экране отображается курс 'Flutter for Beginners'.
    expect(find.text('Flutter for Beginners'), findsOneWidget);
    expect(find.text('Advanced Flutter'), findsOneWidget);

    // Тапаем по курсу 'Flutter for Beginners' и переходим на экран с детальной информацией.
    await tester.tap(find.text('Flutter for Beginners'));
    await tester.pumpAndSettle();  // Ожидаем завершения анимации перехода.

    // Проверяем, что на новом экране отображается полное описание курса.
    expect(find.text('This course covers the basics of Flutter, including setup, widgets, state management, and navigation.'), findsOneWidget);
    
    // Проверяем, что на экране отображается правильное количество уроков.
    expect(find.text('Lessons: 12'), findsOneWidget);
  });
}
