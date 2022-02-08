import 'package:flutter/material.dart';


class AllTasks extends StatefulWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  _AllTasksState createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  void _addTask() {
    print('test');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('to do list'),), body: Center(child: Text('test'),), floatingActionButton: FloatingActionButton(onPressed: _addTask, tooltip: 'addTask', child: const Icon(Icons.add),),);
  }
}