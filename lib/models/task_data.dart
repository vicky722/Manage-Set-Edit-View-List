import 'package:flutter/material.dart';
import 'package:to_do_list/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: " Start adding using  add button . "),
    Task(name: "  Use boxes to mark . "),
    Task(name: " Long press  to DELETE ."),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitles) {
    final task = Task(name: newTaskTitles);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask( Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
