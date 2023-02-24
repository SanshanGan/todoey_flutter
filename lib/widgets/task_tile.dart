import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('I am a task list.'),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? value) {
          true;
        },
      ),
    );
  }
}