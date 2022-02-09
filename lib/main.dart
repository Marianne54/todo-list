import 'package:flutter/material.dart';
import 'package:todo_list/screens/all_tasks.dart';


void main() {
  runApp(const TodoList());
}

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      initialRoute: '/',
      routes: {
        '/home': (context) => TodoList(),
        '/all' : (context) => AllTasks(),
      },
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const AllTasks(),
    );
  }
}

