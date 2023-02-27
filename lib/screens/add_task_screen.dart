import 'package:flutter/material.dart';
import 'package:mytodo/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  late String newTaskTitle;

  AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: 'Enter your task'),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton(
              child: Text('Add'),
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Colors.lightBlueAccent),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              }
            )
          ],
        ),
      ),
    );
  }
}
