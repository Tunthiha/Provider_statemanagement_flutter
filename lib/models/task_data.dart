import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "HEELLO 1"),
    Task(name: "HELLO 2"),
  ];
  int get taskCount {
    return tasks.length;
  }

  void addTask(String? newtask) {
    tasks.add(Task(name: newtask!));
    notifyListeners();
  }

  void isdone(int? index) {
    tasks[index!].isDone = !tasks[index].isDone;
    notifyListeners();
  }
}
