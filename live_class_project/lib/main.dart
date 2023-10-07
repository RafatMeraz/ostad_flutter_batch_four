import 'package:flutter/material.dart';
import 'package:live_class_project/home_screen.dart';

/// Todo_Application
/// CRUD - Create, Read, Update, Delete

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
