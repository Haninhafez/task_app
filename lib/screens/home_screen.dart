import 'package:flutter/material.dart';
import 'package:task_app/model/task_modal.dart';
import 'package:task_app/widgets/list_notes.dart';
import 'package:task_app/widgets/task_creator.dart';
import 'package:task_app/widgets/no_tasks.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController task = TextEditingController();
  late DateTime date;
  TaskApp noteApp = TaskApp();

  @override
  void initState() {
    super.initState();
    date = DateTime.now();
  }

  @override
  void dispose() {
    task.dispose();
    super.dispose();
  }

  void onchange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Tasks",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        backgroundColor: Color(0xff9EF3E3),
      ),
      body: Column(
        children: [
          Expanded(
            child: noteApp.tasks.isEmpty
                ? Center(child: NoTasks())
                : ListNotes(
                    tasks: noteApp.tasks,
                    onchange: (List<Task> p1) => onchange(),
                  ),
          ),

          TaskCreator(
            task: task,
            onchange: (Task task) {
              onchange();
              noteApp.addTask(task);
            },
          ),
        ],
      ),
    );
  }
}
