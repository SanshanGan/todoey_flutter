import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy food'),
    Task(name: 'Buy soap'),
    Task(name: 'Do something'),
  ];
  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {

    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

}