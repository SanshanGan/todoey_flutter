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

}