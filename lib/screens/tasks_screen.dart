import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/models/task_data.dart';
import 'package:to_do_list/screens/add_task_screen.dart';
import 'package:to_do_list/widgets/task_list.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueAccent,
      floatingActionButton: FloatingActionButton(
         backgroundColor :Colors.black26,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
              builder :(context) =>
                  AddTaskScreen());
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 80, left: 40, right: 0, bottom: 20),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 34,
                  ),
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todoyee',
                  style: TextStyle(
                    fontSize: 30,
                    letterSpacing: (2.0),
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${Provider.of<TaskData>(context).taskCount} Tasks',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.white70,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffF1F1F1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
