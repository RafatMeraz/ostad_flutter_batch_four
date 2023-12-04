import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_class_project/counter_state_controller.dart';
import 'package:live_class_project/home_screen.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomeScreen(),
      initialBinding: GetxDependencyBinder(),
    );
  }
}

class GetxDependencyBinder extends Bindings {
  /// Get dependency manager

  /// todo - Code against abstraction -> Dependency injection -> Dependency inversion

  @override
  void dependencies() {
    Get.put(CounterStateController());
  }
}
