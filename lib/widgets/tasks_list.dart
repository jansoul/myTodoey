import 'package:flutter/material.dart';
import 'package:my_todoey/widgets/single_task.dart';
import 'package:my_todoey/myTasks.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, task, child) {
      return ListView.builder(
        itemCount: task.taskList.length,
        itemBuilder: (context, index) {
          return SingleTask(
              isDone: task.taskList[index].isDone,
              taskText: task.taskList[index].taskText,
              onchanged: (bool? a) {
                task.markTask(task.taskList[index]);
              },
              longPress: () {
                task.deleteTask(task.taskList[index]);
              });
        },
      );
    });
  }
}
