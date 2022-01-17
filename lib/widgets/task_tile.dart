import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  final String taskTitle;
  final Function checkboxcallback;
  final int index;
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxcallback,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: Provider.of<TaskData>(context).tasks[index].isDone,
        activeColor: Colors.lightBlue,
        onChanged: (_) =>
            Provider.of<TaskData>(context, listen: false).isdone(index)

        // setState(() {
        //   isChecked = newValue;
        // });
        ,
      ),
    );
  }
}
