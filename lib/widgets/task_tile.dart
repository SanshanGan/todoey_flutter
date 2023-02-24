import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxCallback;

  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
 }


// void checkboxCallback (bool? checkboxState) {
//   setState(() {isChecked = checkboxState ?? false;});
// }


// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final void Function(bool?) toggleCheckboxState;
//
//
//   TaskCheckbox(this.checkboxState, this.toggleCheckboxState);
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         activeColor: Colors.lightBlueAccent,
//         value: checkboxState,
//         onChanged: toggleCheckboxState,
//     );
//   }
// }
