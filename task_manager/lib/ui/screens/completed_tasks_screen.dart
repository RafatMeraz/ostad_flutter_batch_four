import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/profile_summary_card.dart';
import 'package:task_manager/ui/widgets/task_item_card.dart';

class CompletedTasksScreen extends StatefulWidget {
  const CompletedTasksScreen({super.key});

  @override
  State<CompletedTasksScreen> createState() => _CompletedTasksScreenState();
}

class _CompletedTasksScreenState extends State<CompletedTasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ProfileSummaryCard(),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const TaskItemCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
