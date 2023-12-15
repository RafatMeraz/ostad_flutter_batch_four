import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:live_class_project/firebase_student_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const FirebaseStudentApp());
}