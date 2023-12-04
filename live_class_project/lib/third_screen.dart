import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {  },
              child: Text('Go to second screen'),
            ),
            ElevatedButton(
              onPressed: () {  },
              child: Text('Go to home'),
            ),
          ],
        ),
      ),
    );
  }
}
