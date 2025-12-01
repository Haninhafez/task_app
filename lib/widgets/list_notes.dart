import 'package:flutter/material.dart';
import 'package:task_app/model/task_modal.dart';

import 'package:task_app/widgets/task_card.dart';

class ListNotes extends StatefulWidget {
  final List<Task> tasks;
  final Function(List<Task>) onchange;
  const ListNotes({super.key, required this.tasks, required this.onchange});

  @override
  State<ListNotes> createState() => _ListNotesState();
}

class _ListNotesState extends State<ListNotes> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskCard(
          task: widget.tasks[index],
          onchanged: (Task p1) {
            setState(() {
              widget.tasks.remove(widget.tasks[index]);
            });
            widget.onchange(widget.tasks);
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
