import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_app/model/task_modal.dart';

class TaskCard extends StatefulWidget {
  final Task task;
  final Function(Task) onchanged;
  const TaskCard({super.key, required this.task, required this.onchanged});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  late String formattedDate;

  @override
  void initState() {
    super.initState();
    formattedDate = DateFormat('dd/MM/yyyy').format(widget.task.date);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        shadowColor: Colors.grey,
        child: ListTile(
          title: Text(
            widget.task.title,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              decoration: widget.task.isCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          subtitle: Text(
            "Created: $formattedDate",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          leading: Checkbox(
            activeColor: Color(0xff006C60),

            value: widget.task.isCompleted,
            onChanged: (value) {
              setState(() {
                widget.task.isCompleted = !widget.task.isCompleted;
              });
            },
          ),
          trailing: GestureDetector(
            onTap: () => widget.onchanged(widget.task),
            child: Icon(
              Icons.delete_outline_sharp,
              color: Color.fromARGB(255, 224, 127, 112),
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
