import 'package:flutter/gestures.dart';
import 'package:my_todoey/screens/task.dart';
import 'package:flutter/material.dart';

class TaskData extends ChangeNotifier {
  List<Task> taskList = [
    Task(taskText: 'GO PLAY CS GO'),
    Task(taskText: 'DO EVRAD'),
    Task(taskText: 'DO DUHA AND SLEEP')
  ];
  void addTask(String task) {
    taskList.add(Task(taskText: task));
    notifyListeners();
  }

  void markTask(Task task) {
    task.toggle();
    notifyListeners();
  }

  void deleteTask(Task task) {
    taskList.remove(task);
    notifyListeners();
  }
}
