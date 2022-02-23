import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data.dart';

class AddNewTask extends StatefulWidget {
  // final Function addTaskCallBack;
  const AddNewTask({Key? key}) : super(key: key);
  @override
  State<AddNewTask> createState() => _AddNewTaskState();
}

class _AddNewTaskState extends State<AddNewTask> {
  late String typedText;
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Data provider = Provider.of<Data>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFF757575),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Add Task',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.teal.shade600,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    // controller: controller,
                    onChanged: (value) {
                      typedText = value;
                    },
                    textAlign: TextAlign.center,
                    autofocus: true,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.teal.shade600,
                      padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
                    ),
                    onPressed: () {
                      // controller.clear();
                      provider.addNewItem(typedText);
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Add",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
