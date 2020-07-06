import 'package:flutter/material.dart';
import 'package:todoApp/classes/task.dart';
import 'package:todoApp/models/global.dart';
import 'package:todoApp/models/widgets/intray_todo_card.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  List<Task> taskList=[];
  @override
  Widget build(BuildContext context) {
    taskList=getList();
    return Container(

      child: _buildReorderableListSimple(context),
    );
  }

  Widget _buildListTile(BuildContext context, Task item) {


    return ListTile(

      key: Key(item.taskId.toString()),
      title: IntrayTodo(
        title: item.title,
      ),
    );
  }

  Widget _buildReorderableListSimple(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent
      ),
      child: ReorderableListView(
        // handleSide: ReorderableListSimpleSide.Right,
        // handleIcon: Icon(Icons.access_alarm),
        padding: EdgeInsets.only(top: 210.0),
        children: taskList.map((Task item) => _buildListTile(context, item)).toList(),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            Task item = taskList[oldIndex];
            taskList.remove(item);
            taskList.insert(newIndex, item);
          });
        },
      ),
    );
  }


  List<Task> getList() {
   for (int i = 0; i<10; i++){
     taskList.add(
       Task(title: "Todo ${i.toString()}", completed: false, taskId: i.toString())
     );

   }
   return taskList;
  }


}
