import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.name, required this.isChecked, required this.onChanged, this.onLongPressed});

  final String name;
  bool isChecked = false;
  final Function(bool value) onChanged;
  final Function()? onLongPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (value) {
          onChanged(value!);
        },
      ),
      onLongPress: onLongPressed,
    );
  }
}
