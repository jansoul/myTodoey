import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_todoey/myTasks.dart';

class SingleTask extends StatelessWidget {
  final String taskText;
  final bool isDone;
  final Function(bool?) onchanged;
  final Function()? longPress;
  SingleTask(
      {required this.isDone,
      required this.taskText,
      required this.onchanged,
      required this.longPress});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      title: Text(
        taskText,
        style: TextStyle(
            fontSize: 18,
            decoration: isDone == true ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: onchanged,
        value: isDone,
      ),
    );
  }
}
