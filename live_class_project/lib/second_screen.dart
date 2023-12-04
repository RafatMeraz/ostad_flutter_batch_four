import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_class_project/home_screen.dart';
import 'package:live_class_project/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // go to next screen, but replace the current one
                Get.off(ThirdScreen());
              },
              child: Text('Go to third screen'),
            ),
            ElevatedButton(
              onPressed: () {
                // go to next screen and remove all previous screens
                Get.offAll(HomeScreen());
              },
              child: Text('Go to home'),
            ),
            ElevatedButton(
              onPressed: () {
                // back to previous screen
                Get.back(result: true);
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
