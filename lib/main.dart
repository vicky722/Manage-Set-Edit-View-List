import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/task_data.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    create: (context) =>TaskData(),
      child: MaterialApp(
            debugShowCheckedModeBanner: false,
          title: 'To Do List',
          theme: ThemeData(
            fontFamily: 'MuktaVaani',
            primarySwatch: Colors.blue,
            backgroundColor: Colors.blueAccent,
          ),
          home: TasksScreen()),
    );
  }
}
