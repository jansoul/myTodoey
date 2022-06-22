import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_todoey/myTasks.dart';

class AddTaskScreen extends StatelessWidget {
  late String taskText;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(hintText: 'write some task'),
              autocorrect: false,
              textAlign: TextAlign.center,
              onChanged: (value) {
                taskText = value;
              },
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(
              height: 25,
            ),
            Row(mainAxisSize: MainAxisSize.max, children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      Provider.of<TaskData>(context, listen: false)
                          .addTask(taskText);
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent)),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
