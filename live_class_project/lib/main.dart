import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  RxInt count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Obx(
            () => Text(count.toString(), style: const TextStyle(
            fontSize: 24,
          ),),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

