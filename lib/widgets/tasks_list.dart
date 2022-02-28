import 'package:flutter/material.dart';
import 'package:todoi/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  TasksList({required this.tasks});

  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        final task = widget.tasks[index];
        return TaskTile(
          name: task.name,
          isChecked: task.isDone,
          onChanged: (value) {
            setState(() {
              task.toggleDone();
            });
          },
        );
      },
    );
  }
}
