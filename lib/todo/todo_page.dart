import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week10/todo/data.dart';

// import 'data.dart';
class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // List<String> images = [
  //   "item1.png",
  //   "item2.png",
  //   "item3.png",
  //   "item4.png",
  //   "item5.png"
  // ];
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (BuildContext context, data, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final todos = data.todo[index];
            return TaskListTile(
                task: todos.todoName,
                image: "icons/item${Random().nextInt(5) + 1}.png",
                isChecked: todos.isCompleted,
                toggleCheck: (input) {
                  setState(() {
                    todos.isCompleted = input ?? false;
                  });
                },
                deleteItem: () {
                  data.deleteItem(todos);
                });
          },
          itemCount: data.todo.length,
        );
      },
    );
  }
}

class TaskListTile extends StatelessWidget {
  const TaskListTile({
    Key? key,
    required this.task,
    required this.image,
    required this.toggleCheck,
    required this.deleteItem,
    this.isChecked,
  }) : super(key: key);
  final String task;
  final bool? isChecked;
  final String image;
  final Function(bool?) toggleCheck;
  final Function() deleteItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white60, borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListTile(
        onLongPress: deleteItem,
        leading: Image.asset(image),
        title: Text(
          task,
          style: TextStyle(
              decoration: isChecked!
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
        trailing: Checkbox(
          activeColor: Colors.teal.shade600,
          value: isChecked,
          onChanged: toggleCheck,
        ),
      ),
    );
  }
}
