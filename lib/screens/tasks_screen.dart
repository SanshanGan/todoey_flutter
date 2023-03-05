import 'package:flutter/material.dart';
import 'package:mytodo/widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:mytodo/models/task_data.dart';

class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D3B66),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: Color(0xFF0D3B66),
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Color(0xFF0D3B66),
                  ),
                  backgroundColor: Color(0xFFF4D35E),
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      color: Color(0xFFF4D35E),
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.task_outlined,
                      color: Color(0xFFEE964B),
                    ),
                    Text(
                      '${Provider.of<TaskData>(context).taskCount} tasks',
                      style: TextStyle(
                        color: Color(0xFFEE964B),
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Color(0xFFFAF0CA),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )),
              child: TasksList(),
              // child: TasksList(tasks: tasks),
            ),
          ),
        ],
      ),
    );
  }
}
