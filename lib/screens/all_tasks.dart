import 'package:todo_list/components/tasks/task_details.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/screens/create_task.dart';
import 'package:flutter/material.dart';
import '../data/tasks.dart';
import '../models/task.dart';

import '../components/tasks/task_master.dart';


class AllTasks extends StatefulWidget {
  const AllTasks({Key? key}) : super(key: key);
  @override
  _AllTasksState createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text("Liste des tâches")),
        body: TaskMaster(taskslist: Tasks.getTasks()),
      ),
    );
  }


  List<Task> getItems(){
    final List<Task> _toDoWidget = <Task>[];
    for(Task task in Tasks.getTasks()){
      _toDoWidget.add(task);
    }

    return _toDoWidget;
  }
}

class GoogleFonts {
}
