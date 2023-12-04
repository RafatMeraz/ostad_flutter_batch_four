import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_class_project/counter_state_controller.dart';
import 'package:live_class_project/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterStateController counterStateController =
      Get.find<CounterStateController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterStateController>(builder: (controller) {
              return Text(
                controller.count.toString(),
                style: const TextStyle(
                  fontSize: 24,
                ),
              );
            }),
            ElevatedButton(
                onPressed: () {
                  Get.to(const SecondScreen());
                },
                child: const Text('Go to second screen'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterStateController.updateValue(3);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
