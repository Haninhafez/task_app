import 'package:flutter/material.dart';
import 'package:task_app/model/task_modal.dart';

class TaskCreator extends StatefulWidget {
  final TextEditingController task;
  final Function(Task) onchange;

  const TaskCreator({super.key, required this.task, required this.onchange});

  @override
  State<TaskCreator> createState() => _TaskCreatorState();
}

class _TaskCreatorState extends State<TaskCreator> {
  @override
  void dispose() {
    widget.task.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(107, 221, 233, 229),
            offset: Offset(0, -5),
            blurRadius: 5,
            spreadRadius: .25,
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              controller: widget.task,

              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                filled: true,
                fillColor: Color(0xffEEF5F3),
                hint: Text(
                  "Add a new task...",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff47534F),
                  ),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Color(0xffEEF5F3)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(color: Color(0xffEEF5F3)),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          GestureDetector(
            onTap: () {
              Task addingTask = Task(widget.task.text);
              widget.onchange(addingTask);
              widget.task.clear();
            },
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Color(0xffDEE4E2),
              child: Icon(Icons.add, color: Color(0xff909795), size: 30),
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}
