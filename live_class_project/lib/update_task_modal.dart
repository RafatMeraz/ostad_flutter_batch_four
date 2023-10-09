import 'package:flutter/material.dart';
import 'package:live_class_project/todo.dart';

class UpdateTaskModal extends StatefulWidget {
  const UpdateTaskModal({
    super.key,
    required this.todo,
    required this.onTodoUpdate
  });

  final Todo todo;
  final Function(String) onTodoUpdate;

  @override
  State<UpdateTaskModal> createState() => _UpdateTaskModalState();
}

class _UpdateTaskModalState extends State<UpdateTaskModal> {
  late TextEditingController todoTEController;

  @override
  void initState() {
    super.initState();
    todoTEController = TextEditingController(text: widget.todo.details);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Update todo',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          TextFormField(
            controller: todoTEController,
            maxLines: 4,
            decoration: const InputDecoration(
              hintText: 'Enter your todo here',
              enabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  widget.onTodoUpdate(todoTEController.text.trim());
                  Navigator.pop(context);
                },
                child: const Text('Update'),
              ))
        ],
      ),
    );
  }
}
