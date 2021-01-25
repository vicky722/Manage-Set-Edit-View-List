import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/models/task_data.dart';
import 'package:provider/provider.dart';

String newTaskTitles = "no tasks found";
String newText = "no tasks found";

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(children: <Widget>[
            Text(
              "Add Tasks",
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {

                newTaskTitles = newText;
              },
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
              onPressed: () {

                Provider.of<TaskData>(context).addTask(newTaskTitles);
                Navigator.pop(context);
              },
            ),
          ])),
    );
  }
}
