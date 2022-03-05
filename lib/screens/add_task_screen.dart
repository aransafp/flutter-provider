import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task.dart';
import 'TasksProvider.dart';

class AddTaskScreen extends StatelessWidget {
  late String task;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(),
              onChanged: (value) {
                task = value;
              },
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              color: Colors.lightBlueAccent,
              child: TextButton(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Provider.of<TasksProvider>(context, listen: false)
                      .addTask(task);
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
