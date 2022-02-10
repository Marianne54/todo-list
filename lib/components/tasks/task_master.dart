import 'package:flutter/material.dart';
import 'package:todo_list/components/tasks/task_preview.dart';

import '../../models/task.dart';

class TaskMaster extends StatelessWidget {
  final List<Task> taskslist;
  const TaskMaster({Key? key, required this.taskslist}) : super(key: key);

  List<TaskPreview> _getListTaskPreview(){
    var tasks = <TaskPreview>[];
    for(Task t in taskslist){
      tasks.add(TaskPreview(t));
    }
    return tasks;
  }


  @override
  Widget build(BuildContext context) {
    return ListView(
        children: _getListTaskPreview()
    );
  }
}
