import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<TaskData>(context).tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
            taskTitle: Provider.of<TaskData>(context).tasks[index].name,
            checkboxcallback: (checkboxState) {
              // setState(
              //   () {
              //     Provider.of<TaskData>(context).tasks[index].toggleDone();
              //   },
              // );
            },
            index: index,
          );
        });
  }
}
