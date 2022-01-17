import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? newTask;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: false,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTask = value;
              },
            ),
            TextButton(
                onPressed: () {
                  // final task = Task(name: newTask!);
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTask);
                  Navigator.pop(context);
                },
                child: Text('add'))
          ],
        ),
      ),
    );
  }
}
