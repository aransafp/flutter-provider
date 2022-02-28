import 'package:flutter/material.dart';

import '../models/task.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({required this.onSubmit});

  final Function(Task task) onSubmit;
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
                  onSubmit(
                    Task(name: task),
                  );
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
