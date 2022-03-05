import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoi/widgets/task_tile.dart';

import '../screens/TasksProvider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(
      builder: (context, taskData, _) {
        return ListView.builder(
          itemCount: taskData.tasksCount,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              name: task.name,
              isChecked: task.isDone,
              onChanged: (value) {
                taskData.updateTask(task);
              },
              onLongPressed: () {
                print('Long pressed');
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
