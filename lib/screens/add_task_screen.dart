import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Add Task'),
            TextField(),
            SizedBox(),
            TextButton(onPressed: null, child: Text('Add'),)
          ],
        ),
      ),
    );
  }
}
