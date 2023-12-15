import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:live_class_project/firebase_messaging_service.dart';
import 'package:live_class_project/firebase_student_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseMessagingService().initialize();
  await FirebaseMessagingService().getFCMToken();
  await FirebaseMessagingService().subscribeToTopic('the-new-boston');
  await FirebaseMessagingService().onRefresh((token) {
    // TODO - send to api
  });

  runApp(const FirebaseStudentApp());
}